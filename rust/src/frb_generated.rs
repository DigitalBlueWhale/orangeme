// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.5.

#![allow(
    non_camel_case_types,
    unused,
    non_snake_case,
    clippy::needless_return,
    clippy::redundant_closure_call,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::unused_unit,
    clippy::double_parens,
    clippy::let_and_return,
    clippy::too_many_arguments
)]

// Section: imports

use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate!();

// Section: executor

flutter_rust_bridge::frb_generated_default_handler!();

// Section: wire_funcs

fn wire_Response_bad_request_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    method: impl CstDecode<String> + core::panic::UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::DcoCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "Response_bad_request",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let api_method = method.cst_decode();
            move |context| {
                transform_result_dco((move || {
                    Result::<_, ()>::Ok(crate::api::simple::Response::bad_request(api_method))
                })())
            }
        },
    )
}
fn wire_Response_error_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    message: impl CstDecode<String> + core::panic::UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::DcoCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "Response_error",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let api_message = message.cst_decode();
            move |context| {
                transform_result_dco((move || {
                    Result::<_, ()>::Ok(crate::api::simple::Response::error(api_message))
                })())
            }
        },
    )
}
fn wire_Response_new_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    status: impl CstDecode<i32> + core::panic::UnwindSafe,
    message: impl CstDecode<String> + core::panic::UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::DcoCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "Response_new",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let api_status = status.cst_decode();
            let api_message = message.cst_decode();
            move |context| {
                transform_result_dco((move || {
                    Result::<_, ()>::Ok(crate::api::simple::Response::new(api_status, api_message))
                })())
            }
        },
    )
}
fn wire_dropdb_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    path: impl CstDecode<String> + core::panic::UnwindSafe,
    descriptors: impl CstDecode<String> + core::panic::UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::DcoCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "dropdb",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let api_path = path.cst_decode();
            let api_descriptors = descriptors.cst_decode();
            move |context| {
                transform_result_dco((move || {
                    Result::<_, ()>::Ok(crate::api::simple::dropdb(api_path, api_descriptors))
                })())
            }
        },
    )
}
fn wire_invoke_impl(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    method: impl CstDecode<String> + core::panic::UnwindSafe,
    args: impl CstDecode<Vec<String>> + core::panic::UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_normal::<flutter_rust_bridge::for_generated::DcoCodec, _, _>(
        flutter_rust_bridge::for_generated::TaskInfo {
            debug_name: "invoke",
            port: Some(port_),
            mode: flutter_rust_bridge::for_generated::FfiCallMode::Normal,
        },
        move || {
            let api_method = method.cst_decode();
            let api_args = args.cst_decode();
            move |context| {
                transform_result_dco((move || {
                    Result::<_, ()>::Ok(crate::api::simple::invoke(api_method, api_args))
                })())
            }
        },
    )
}

// Section: dart2rust

impl CstDecode<i32> for i32 {
    fn cst_decode(self) -> i32 {
        self
    }
}
impl CstDecode<u8> for u8 {
    fn cst_decode(self) -> u8 {
        self
    }
}
impl SseDecode for String {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut inner = <Vec<u8>>::sse_decode(deserializer);
        return String::from_utf8(inner).unwrap();
    }
}

impl SseDecode for i32 {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_i32::<NativeEndian>().unwrap()
    }
}

impl SseDecode for Vec<String> {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut len_ = <i32>::sse_decode(deserializer);
        let mut ans_ = vec![];
        for idx_ in 0..len_ {
            ans_.push(<String>::sse_decode(deserializer));
        }
        return ans_;
    }
}

impl SseDecode for Vec<u8> {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut len_ = <i32>::sse_decode(deserializer);
        let mut ans_ = vec![];
        for idx_ in 0..len_ {
            ans_.push(<u8>::sse_decode(deserializer));
        }
        return ans_;
    }
}

impl SseDecode for crate::api::simple::Response {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        let mut var_status = <i32>::sse_decode(deserializer);
        let mut var_message = <String>::sse_decode(deserializer);
        return crate::api::simple::Response {
            status: var_status,
            message: var_message,
        };
    }
}

impl SseDecode for u8 {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap()
    }
}

impl SseDecode for () {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {}
}

impl SseDecode for bool {
    fn sse_decode(deserializer: &mut flutter_rust_bridge::for_generated::SseDeserializer) -> Self {
        deserializer.cursor.read_u8().unwrap() != 0
    }
}

// Section: rust2dart

impl flutter_rust_bridge::IntoDart for crate::api::simple::Response {
    fn into_dart(self) -> flutter_rust_bridge::for_generated::DartAbi {
        vec![
            self.status.into_into_dart().into_dart(),
            self.message.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl flutter_rust_bridge::for_generated::IntoDartExceptPrimitive for crate::api::simple::Response {}
impl flutter_rust_bridge::IntoIntoDart<crate::api::simple::Response>
    for crate::api::simple::Response
{
    fn into_into_dart(self) -> crate::api::simple::Response {
        self
    }
}

impl SseEncode for String {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <Vec<u8>>::sse_encode(self.into_bytes(), serializer);
    }
}

impl SseEncode for i32 {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_i32::<NativeEndian>(self).unwrap();
    }
}

impl SseEncode for Vec<String> {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <i32>::sse_encode(self.len() as _, serializer);
        for item in self {
            <String>::sse_encode(item, serializer);
        }
    }
}

impl SseEncode for Vec<u8> {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <i32>::sse_encode(self.len() as _, serializer);
        for item in self {
            <u8>::sse_encode(item, serializer);
        }
    }
}

impl SseEncode for crate::api::simple::Response {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        <i32>::sse_encode(self.status, serializer);
        <String>::sse_encode(self.message, serializer);
    }
}

impl SseEncode for u8 {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self).unwrap();
    }
}

impl SseEncode for () {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {}
}

impl SseEncode for bool {
    fn sse_encode(self, serializer: &mut flutter_rust_bridge::for_generated::SseSerializer) {
        serializer.cursor.write_u8(self as _).unwrap();
    }
}

#[cfg(not(target_family = "wasm"))]
#[path = "frb_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
#[path = "frb_generated.web.rs"]
mod web;
#[cfg(target_family = "wasm")]
pub use web::*;
