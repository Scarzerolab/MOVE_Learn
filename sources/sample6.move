module trah_addr::sample6{
    fun bitwise_or(a: u8, b: u8): u8 {
        return a|b
    }
    fun bitwise_and(a: u8, b: u8): u8 {
        return a&b
    }
    fun bitwise_xor(a: u8, b: u8): u8 {
        return a^b
    }

    fun bitshift_left(a: u8, times: u8): u8 {
        return a<<times
    }
    fun bitshift_right(a: u8, times: u8): u8 {
        return a>>times
    }
    /*
    #[test_only]
    use std::debug::print;

    #[test]
    fun bitwise_test(){
        let or_result: u8 = bitwise_or(7, 4);
        print(&or_result);
        let and_result: u8 = bitwise_and(7, 4);
        print(&and_result);
        let xor_result: u8 = bitwise_xor(7, 4);
        print(&xor_result);
        let left_result: u8 = bitshift_left(7, 2);
        print(&left_result);
        let right_result: u8 = bitshift_right(7, 2);
        print(&right_result);
    }
     */
}