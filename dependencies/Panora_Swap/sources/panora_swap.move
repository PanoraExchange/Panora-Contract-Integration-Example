module 0x1c3206329806286fd2223647c9f9b130e66baeb6d7224a18c1f642ffe48f3b4c::panora_swap {
    // Performs a swap operation which takes &signer as an argument and executes withdraw / deposit too 
    public entry fun router_entry<
        T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31
    >(
        arg0: &signer,           
        arg1: 0x1::option::Option<signer>,  
        arg2: address,
        arg3: u64,
        arg4: u8,
        arg5: vector<u8>,
        arg6: vector<vector<vector<u8>>>,  
        arg7: vector<vector<vector<u64>>>,   
        arg8: vector<vector<vector<bool>>>, 
        arg9: vector<vector<u8>>,  
        arg10: vector<vector<vector<address>>>,
        arg11: vector<vector<address>>,
        arg12: vector<vector<address>>,
        arg13: 0x1::option::Option<vector<vector<vector<vector< vector<u8> >>>>>,
        arg14: vector<vector<vector<u64>>>, 
        arg15: 0x1::option::Option<vector<vector<vector<u8>>>>, 
        arg16: address,
        arg17: vector<u64>,
        arg18: u64,
        arg19: u64,
        arg20: address
    )
    {
    }

    // Performs a swap operation which takes and returns a Coin / FA
    public fun router<
        T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31
    >(
        arg0: address,
        arg1:  0x1::option::Option<0x1::coin::Coin<T0>>,
        arg2: 0x1::option::Option<0x1::fungible_asset::FungibleAsset>,
        arg3: u64,
        arg4: u8,
        arg5: vector<u8>,  
        arg6: vector<vector<vector<u8>>>,
        arg7: vector<vector<vector<u64>>>,
        arg8: vector<vector<vector<bool>>>, 
        arg9: vector<vector<u8>>,  
        arg10: vector<vector<vector<address>>>,  
        arg11: vector<vector<address>>,
        arg12: vector<vector<address>>,
        arg13: 0x1::option::Option<vector<vector<vector<vector<vector<u8>>>>>>,
        arg14: vector<vector<vector<u64>>>, 
        arg15: 0x1::option::Option<vector<vector<vector<u8>>>>,
        arg16: address,
        arg17: vector<u64>,
        arg18: u64,
        arg19: u64,
        arg20: address
    ) : (0x1::option::Option<0x1::coin::Coin<T0>> , 0x1::option::Option<0x1::fungible_asset::FungibleAsset>,0x1::option::Option<0x1::coin::Coin<T31>> , 0x1::option::Option<0x1::fungible_asset::FungibleAsset>)  
    {
        std::option::destroy_none(arg2);
        std::option::destroy_none(arg1);  
       
       return (std::option::none(), std::option::none(), std::option::none(), std::option::none())
    }
}

