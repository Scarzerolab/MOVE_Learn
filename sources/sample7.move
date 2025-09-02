address trah_addr{
    module PriceOracle {
        public fun btc_price(): u128 {
            return 100000
        }
    }
    
    module CastingDemo {
        use trah_addr::PriceOracle;
        use std::debug::print;

        fun calculate_price(){
            let btc_price = PriceOracle::btc_price();
            let price_w_fee: u64 = (btc_price as u64) + 2;
            print(&price_w_fee)
        }

        #[test]
        fun test_funtion(){
            calculate_price()
        }
    }
}