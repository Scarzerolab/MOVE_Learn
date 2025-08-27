module net2dev_addr::Sample1 {
    use std::debug;
    use std::string::{String, utf8};

    const ID: u64 = 100;

    fun set_value(): u64 {
        let value_id: u64 = 200;
        let string_byte: vector<u8> = b"hello world byte";
        let string_val: String = utf8(b"hello world string");
        debug::print(&string_byte);
        debug::print(&utf8(string_byte));
        debug::print(&string_val);
        debug::print(&value_id);
        ID
    }

    #[test]
    fun test_function() {
        let id_value: u64 = set_value();
        debug::print(&id_value);
    }
}