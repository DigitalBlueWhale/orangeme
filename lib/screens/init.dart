import 'package:flutter/material.dart';
import 'non_premium/dashboard.dart';

import 'package:orange/src/rust/api/simple.dart';
import 'package:orange/util.dart';
import 'dart:io';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  InitPageState createState() => InitPageState();
}

class InitPageState extends State<InitPage> {
  final text = ValueNotifier<String>("de");
  bool loading = true;

  @override
  void initState() {
    super.initState();
    print('Welcome Page loaded');
    print('Checking for seed...');
    onPageLoad();
  }

  void onPageLoad() async {
    checkPlatform();
    var descriptors = await STORAGE.read(key: "descriptors");
    print("read from DB");
    if (descriptors == null) {
      descriptors = HandleError(
          await invoke(method: "get_new_singlesig_descriptor", args: []),
          context);
      await STORAGE.write(key: "descriptors", value: descriptors);
    }
    print("desc: $descriptors");
    String path = await GetDBPath();
    print('Syncing Wallet...');
    HandleError(await invoke(method: "sync_wallet", args: [path, descriptors]),
        context);
    setState(() {
      loading = false;
    });
  }

  void genSeed() async {
    var descriptors = HandleError(
        await invoke(method: "get_new_singlesig_descriptor", args: []),
        context);
    await STORAGE.write(key: "descriptors", value: descriptors);
    print("desc: ${descriptors}");
  }

  void checkPlatform() {
    if (Platform.isAndroid) {
      print("Android device detected");
    } else if (Platform.isIOS) {
      print("IOS device detected");
    } else if (Platform.isLinux) {
      print("Linux device detected");
    } else if (Platform.isMacOS) {
      print("Mac OS device detected");
    } else if (Platform.isWindows) {
      print("Windows device detected");
    } else if (Platform.isFuchsia) {
      print("Fuchsia device detected");
    }
  }

  void DropDB() async {
    print("dropdb");
    var descriptors =
        HandleNull(await STORAGE.read(key: "descriptors"), context);
    String path = await GetDBPath();
    //await dropdb(path: path, descriptors: descriptors);
    print("dropeddb");
  }

  void throwError() async {
    HandleError(await invoke(method: "throw_error", args: []), context);
  }

  void navigate() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Enables scrolling
        padding: const EdgeInsets.all(16.0),
        child: loading
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: const Center(child: CircularProgressIndicator()))
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Welcome to Orange. This screen will not normally be seen and is used for initialization',
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ValueListenableBuilder<String>(
                    valueListenable: text,
                    builder: (BuildContext context, String value, child) {
                      return Text(
                        "$value Sats",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => {navigate()},
                    child: const Text('Proceed'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text(
                      'Gendesc(disabled)',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => {throwError()},
                    child: const Text('Error'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => {DropDB()},
                    child: const Text('drop'),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
      ),
    );
  }
}
