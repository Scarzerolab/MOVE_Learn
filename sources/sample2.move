module trah_addr::sample2 {
    use std::debug::print;

    const My_addr: address = @trah_addr;

    fun confirm_value(choice: bool): (u64, bool){
        if (choice)
            return (1, choice)
        else
            return (0, choice)
    }
    //expected return (1, true)

    #[test]
    fun test_function(){
        let (number, choice) = confirm_value(true);
        print(&number);
        print(&choice);
    }
}