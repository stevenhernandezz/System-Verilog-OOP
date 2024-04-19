`include "transaction_util.svh"

//ensure each var is alocated independ.
program automatic static_methods_tb;
	import Transaction_util::*;
  
  Config cfg = new(42);
  	
  	//dynamic array allocation
    Transaction trans[];
  
  //loop for unique id 
  initial begin
    // Allocate the dynamic array with a size determined at runtime.
        trans = new[cfg.num_trans];
    
    //setting static cfg var in transaction claass
  Transaction::cfg = cfg; 
    
    for(int i = 0; i < cfg.num_trans; i++) begin
      //unique num
      trans[i] = new(i + 1);
    end
     
 //static method call
    Transaction::display_statics();
   
  end
endprogram