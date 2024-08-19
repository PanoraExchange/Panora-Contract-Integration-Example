// Sample contract for panora swap integration
module integrator_address::Sample
{
    use aptos_framework::aptos_account;
    use aptos_framework::coin; 
    use std::option::{Self,Option};
    use std::signer;
    use std::vector;   
    use std::fungible_asset::{Self, Metadata};
    use std::primary_fungible_store;
    use std::object; 

    // Importing panora swap module
    use wrapper::panora_swap;
 
    // Main function for executing panora swap operations (Note - don't change order of the arguments)
    public entry fun sample_function<
        X1,Y1,Z1,Y2,Z2,Y3,
        Z3,Y4,Z4,Y5,Z5,Y6,
        Z6,Y7,Z7,Y8,Z8,Y9,
        Z9,Y10,Z10,Y11,Z11,Y12,
        Z12,Y13,Z13,Y14,Z14,Y15,
        Z15,OutCoin
    >(
        arg0: &signer, 
        arg1: address,
        arg2: u64,
        arg3: u8,
        arg4: vector<u8>,
        first_x_obj: vector<address>,
        arg6: vector<vector<u8>>,
        arg7:vector< vector<u64>>,
        arg8: vector<vector<bool>>,
        first_fa_case: vector<u8>, 
        arg10: vector<address>, 
        arg11: vector<vector<u8>>,
        arg12: vector<vector<u64>>,
        arg13: vector<vector<bool>>,
        arg14: vector<u8>, 
        arg15: vector<address>, 
        arg16: vector<vector<u8>>,
        arg17: vector<vector<u64>>,
        arg18: vector<vector<bool>>,
        arg19: vector<u8>, 
        arg20: vector<address>, 
        arg21: address,
        _x_in_steps: vector<u64>,
        arg23:  vector<vector<u64>>,
        arg24: vector<vector<u64>>,
        arg25: vector<vector<u64>>,
        arg26: u64,
        arg27: u64,
        arg28: address
        // Additional arguments can be appended here depending on your contract
    )
    {
        // Calculate total input amount of X tokens to be passed in the swap_exact_in function
        let total_input_amount = 0;
        
        vector::for_each(_x_in_steps, |e| {
            total_input_amount = total_input_amount + e;
        });

        // Determine asset type (Coin / FA) and extract the respective token according to the function payload
        let (coin_x , fa_x )= if( *vector::borrow(&first_fa_case,0) == 1 || *vector::borrow(&first_fa_case,0) == 2)
        {
            let obj = object::address_to_object<Metadata>(*vector::borrow(&first_x_obj, 0));
            ( option::none(), option::some(primary_fungible_store::withdraw(arg0 , obj , total_input_amount) ))
            // if integrators want to exclude fungible assets, comment out the above two lines and uncomment the below line
            // (option::none() , option::none())
        }
        else
        { 
            ( option::some(coin::withdraw<X1>(arg0, total_input_amount)) , option::none() )
              // if you want to exclude coins then you can replace the above line and enable the below line
            // (option::none() , option::none())
        };

        // Call the swap_exact_in function from the panora_swap module
        // Enter the first argument as the user's address that will receive any residual tokens post-swap execution
        let (coin_m_out, fa_m_out) = panora_swap::swap_exact_in<
            X1,Y1,Z1,Y2,Z2,Y3,Z3,
            Y4,Z4,Y5,Z5,
            Y6,Z6,Y7,Z7,Y8,Z8, 
            Y9,Z9,Y10,Z10,Y11,Z11,Y12,Z12,Y13,Z13,Y14,Z14,Y15,Z15,
            OutCoin
        >(signer::address_of(arg0) , coin_x, fa_x , arg2, arg3 , arg4,first_x_obj, arg6,arg7, arg8, first_fa_case, arg10, arg11, arg12, arg13, arg14 , arg15, arg16, arg17 , arg18, arg19 , arg20 ,arg21 ,_x_in_steps, arg23, arg24, arg25  , arg26, arg27, arg28 );


        // Checking and depositing the returned Coins or FA
        check_and_deposit_fa_to_address_opt(arg1, fa_m_out);
        check_and_deposit_to_address_opt<OutCoin>(arg1, coin_m_out);
    }

    
    // Helper function to deposit FA to the given address
    fun check_and_deposit_fa_to_address_opt(receiver: address, coin_opt: Option<0x1::fungible_asset::FungibleAsset>) {
        if (option::is_some(&coin_opt)) {
            let fa = option::extract(&mut coin_opt); 
            primary_fungible_store::deposit(receiver, fa);
        }; 

        option::destroy_none(coin_opt);
    }
 
    // Helper function to deposit coins to the given address
    fun check_and_deposit_to_address_opt<X>(receiver: address, coin_opt:  Option<coin::Coin<X>>) {
        if (option::is_some(&coin_opt)) {
            let coin = option::extract(&mut coin_opt);
            aptos_account::deposit_coins<X>(receiver,coin);
        };

        option::destroy_none(coin_opt);      
    }
}