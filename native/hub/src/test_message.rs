use crate::messages::test_message::{self, TestMessage};
use rinf::debug_print;

pub async fn test_message() {
    let mut receiver = TestMessage::get_dart_signal_receiver();
    while let Some(dart_signal) = receiver.recv().await {
        let message = dart_signal.message;
        debug_print!("Received dart test signal: {}", message.msg);
    }
}