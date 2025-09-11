module trah_addr::mapdemo {
    use std::simple_map::{SimpleMap, Self};
    use std::string::{String, utf8};

    fun create_map(): SimpleMap<u64, String> {
        let my_map: SimpleMap<u64, String> = simple_map::create();
        my_map.add(1, utf8(b"IDR"));
        my_map.add(2, utf8(b"USD"));
        my_map.add(3, utf8(b"AUD"));
        my_map.add(4, utf8(b"SGD"));
        my_map.add(5, utf8(b"EUR"));
        return my_map
    }

    fun check_map_lenght(input_map: SimpleMap<u64, String>): u64 {
        let value = input_map.length();
        return value
    }

    fun remove_map_key(input_map: SimpleMap<u64, String>, key: u64): SimpleMap<u64, String> {
        input_map.remove(&key);
        return input_map
    }

    #[test_only]
    use std::debug::print;

    #[test]
    fun test_function(){
        let my_map = create_map();
        let currency = my_map.borrow(&2);
        print(currency);
        let length = check_map_lenght(my_map);
        print(&length);
        let new_map = remove_map_key(my_map, 5);
        let length = check_map_lenght(new_map);
        print(&length)
    }
}