address trah_addr {
    module one {
        friend trah_addr::two;
        friend trah_addr::three;

        public(friend) fun get_value(): u64 {
            return 100
        }

        #[view]
        public fun view_function(): u64 {
            let price: u64 = 100;
            return price
        }
    }

    module two {
        #[test_only]
        use std::debug::print;
        #[test_only]
        use trah_addr::one::get_value;
        
        #[test]
        fun test_function(){
            //use trah_addr::one::get_value;
            let result: u64 = get_value();
            print(&result)
        }
    }

    module three {
        #[test_only]
        use std::debug::print;
        #[test_only]
        use trah_addr::one::get_value;
        
        #[test]
        fun test_function(){
            //use trah_addr::one::get_value;
            let result: u64 = get_value();
            print(&result)
        }
    }
}