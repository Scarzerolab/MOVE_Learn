module trah_addr::sample4{
    use std::string::{String, utf8};
    use std::debug::print;

    fun sample_for_loop(count: u64): u64 {
        let value: u64 = 0;
        for (i in 0..count){
            value = i + 1;
        };
        return value
    }

    fun sample_while_loop(count: u64): u64 {
        let value: u64 = 0;
        let i: u64 = 1;
        while (i <= count) {
            value +=  1;
            i += 1;
        };
        return value
    }

    fun sample_loop(count: u64): u64 {
        let value: u64 = 0;
        let i: u64 = 1;
        loop {
            value += 1;
            i += 1;
            if(i > count)
                break;
        };
        return value
    }

    fun sample_abort(value: String){
        if(value == utf8(b"trahganteng"))
            print(&utf8(b"fakta"))
        else
            abort 404  
    }

    fun sample_assert(value: String){
        assert!(value == utf8(b"trahganteng"), 404);
        print(&utf8(b"correct"))
    }
    
    #[test]
    fun for_test(){
        let result: u64 = sample_for_loop(10);
        print(&result)
    }

    #[test]
    fun while_test(){
        let result: u64 = sample_while_loop(10);
        print(&result)
    }

    #[test]
    fun standar_loop(){
        let result: u64 = sample_loop(10);
        print(&result)
    }

    #[test]
    #[expected_failure]
    fun abort_test(){
        sample_abort(utf8(b"trahjelek"));
    }

    #[test]
    fun assert_test(){
        sample_assert(utf8(b"trahganteng"));
    }
}