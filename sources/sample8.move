module trah_addr::SignerDemo {
    use std::signer;
    use std::debug::print;
    //use std::string::{String, utf8};

    ///Error code: when caller is not the owner
    const Not_Owner: u64 = 0;
    ///contract owner address
    const Owner: address = @trah_addr;

    fun check_owner(account: signer){
        assert!(signer::address_of(&account) == Owner, Not_Owner);
        print(&signer::address_of(&account));
    }
    /*
    #[test(account = @trah_addr)]
    fun test_function(account: signer){
        check_owner(account);
    }
    */
}