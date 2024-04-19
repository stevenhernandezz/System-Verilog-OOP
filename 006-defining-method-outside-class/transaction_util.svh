//package
package Transaction_util;

//class
class Transaction;
  logic [31:0] addr, csm;
  logic [31:0] data[8];
  
  //external method
  extern function void display();
  extern function void calc_csm();
endclass
    
  //display method
  //display print addr csm data
  function void Transaction::display();
   $display("Addr: %h, CSM: %h, Data: data[0]: %h, data[1]: %h \n, data[2]: %h, data[3]: %h, data[4]: %h, data[5]: %h \n, data[6]: %h, data[7]: %h",
             addr, csm, data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7]); 
  endfunction
  
  //calc method
  //compute the checksum by XORing addr
  function void Transaction::calc_csm();    logic [31:0] result;
    result = addr;
    foreach(data[i])
      result = result ^ data[i];
      csm = result;
  endfunction
endpackage 