module trah_addr::sample5{
    //arthmetic
    const Add: u8 = 1;
    const Sub: u8 = 2;
    const Mul: u8 = 3;
    const Div: u8 = 4;
    const Mod: u8 = 5;
    //equality
    const Higher: u8 = 1;
    const Lower: u8 = 2;
    const HigherEqual: u8 = 3;
    const LowerEqual: u8 = 4;
    const Equal: u8 = 5;

    fun arthmetic_operation(x: u64, y: u64, operator: u8): u64{
        if(operator == Add)
            return x+y
        else if (operator == Sub)
            return x-y
        else if (operator == Mul)
            return x*y
        else if (operator == Div)
            return x/y
        else
            return x%y
    }

    fun equality_operation(x: u64, y: u64, operator: u8): bool{
        if(operator == Higher)
            return x > y
        else if(operator == Lower)
            return x < y
        else if(operator == HigherEqual)
            return x <= y
        else if(operator == LowerEqual)
            return x <= y
        else
            return x == y
    }
/*
    #[test_only]
    use std::debug::print;

    #[test]
    fun arthmetic_test(){
        let result: u64 = arthmetic_operation(2, 2, Add);
        print(&result)
    }

    #[test]
    fun equality_test(){
        let result: bool = equality_operation(100, 101, Equal);
        print(&result)
    }
 */
}