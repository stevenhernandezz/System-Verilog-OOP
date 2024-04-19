//define a package 
package Transaction_util;

//class
//configuration parameter 
class Config;
  	int num_trans;
  	//parameter transactions;
  
//constructor to confrim objects creation
  function new(int num);
    this.num_trans = num;
    $display("Object has been created, num_tras = %0d", this.num_trans);
  endfunction
endclass

//Transaction class
class Transaction;
  //static var to hold config for all trans
  //static int to keep track of trans
  //integer for instance of trans
  	static Config cfg;
  	static int count = 0;
  	int id;

//initialize the transaction and increment count
  function new(int HoldCount);
    this.id = HoldCount;
    count++;
   $display("Transaction object created with id = %0d, total instances = %0d", id, count);
    endfunction

//static methods can access static var
static function display_statics();
  if (cfg == null) begin
    $display("error cfg is null");
    end else begin
      $display("Cfg is not nullnum_trans = %0d, count = %0d", cfg.num_trans, count);
  end
endfunction
endclass

endpackage
