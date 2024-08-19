module 0x1c3206329806286fd2223647c9f9b130e66baeb6d7224a18c1f642ffe48f3b4c::panora_swap {
    // Performs a swap operation which takes and returns a Coin / FA
    public fun swap_exact_in<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31>(arg0: address, arg1: 0x1::option::Option<0x1::coin::Coin<T0>>, arg2: 0x1::option::Option<0x1::fungible_asset::FungibleAsset>, arg3: u64, arg4: u8, arg5: vector<u8>, arg6: vector<address>, arg7: vector<vector<u8>>, arg8: vector<vector<u64>>, arg9: vector<vector<bool>>, arg10: vector<u8>, arg11: vector<address>, arg12: vector<vector<u8>>, arg13: vector<vector<u64>>, arg14: vector<vector<bool>>, arg15: vector<u8>, arg16: vector<address>, arg17: vector<vector<u8>>, arg18: vector<vector<u64>>, arg19: vector<vector<bool>>, arg20: vector<u8>, arg21: vector<address>, arg22: address, arg23: vector<u64>, arg24: vector<vector<u64>>, arg25: vector<vector<u64>>, arg26: vector<vector<u64>>, arg27: u64, arg28: u64, arg29: address) : (0x1::option::Option<0x1::coin::Coin<T31>>, 0x1::option::Option<0x1::fungible_asset::FungibleAsset>) {
        std::option::destroy_none(arg2);
        std::option::destroy_none(arg1);  
       
       return (std::option::none(), std::option::none())
    }
    
    // Performs a swap operation which takes &signer as an argument and executes withdraw / deposit too 
    public entry fun swap_exact_in_entry<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31>(arg0: &signer, arg1: address, arg2: u64, arg3: u8, arg4: vector<u8>, arg5: vector<address>, arg6: vector<vector<u8>>, arg7: vector<vector<u64>>, arg8: vector<vector<bool>>, arg9: vector<u8>, arg10: vector<address>, arg11: vector<vector<u8>>, arg12: vector<vector<u64>>, arg13: vector<vector<bool>>, arg14: vector<u8>, arg15: vector<address>, arg16: vector<vector<u8>>, arg17: vector<vector<u64>>, arg18: vector<vector<bool>>, arg19: vector<u8>, arg20: vector<address>, arg21: address, arg22: vector<u64>, arg23: vector<vector<u64>>, arg24: vector<vector<u64>>, arg25: vector<vector<u64>>, arg26: u64, arg27: u64, arg28: address) {
    }
}

