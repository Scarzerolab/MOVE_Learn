module trah_addr::RefDemo{
    use std::debug::print;

    /// non ref type to immutable ref
    fun scenario1(){
        let value_a = 10;
        let imm_ref: &u64 = &value_a;
        print(imm_ref);
    }

    /// Mutable to immutable ref
    fun scenario2(){
        let value_a = 20;
        let mut_ref: &mut u64 = &mut value_a;
        let imm_ref: &u64 = mut_ref;
        print(imm_ref);
    }

    fun re_assign(value_a: &mut u64, value_b: &u64) {
        *value_a = *value_b;
        print(value_a);
    }

    fun scenario3(){
        let value_a: &mut u64 = &mut 90;
        let value_b: &u64 = &80;
        re_assign(value_a, value_b);
    }
    /*
    #[test]
    fun test_function(){
        scenario1();
        scenario2();
        scenario3();
    }
    */
}