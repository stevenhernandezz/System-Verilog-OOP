`include "transaction_util.svh"

program automatic tb_top;
    import Transaction_util::*;
    Transaction tr1, tr2, tr3;
  //data1, data2, data3
  logic [31:0] data1[8] = '{32'hBAFEDCBA, 32'hABCDEFAB, 32'hBAFEDCBA, 32'hABCDEFAB, 32'h12345689, 32'h98765432, 32'hAAAAAAAA, 32'hFFFFFFFF};
    logic [31:0] data2[8] = '{32'hAAAAAAAA, 32'h11111111, 32'h22222222, 32'h33333333, 32'h44444444, 32'h55555555, 32'h66666666, 32'h77777777};
    logic [31:0] data3[8] = '{32'h88888888, 32'h99999999, 32'hAAAAA111, 32'hBBBBB222, 32'hCCCCC333, 32'hDDDDD444, 32'hEEEEE555, 32'hFFFFF666};

    initial begin
//init tr1, tr2, tr3
      tr1 = new();
      tr2 = new();
      tr3 = new();
      
//init seperate data arrays for each instance data1, data2, data3
      tr1.data = data1;
      tr2.data = data2;
      tr3.data = data3;       
//calculating csm 
//display 
      	tr1.addr = 32'hDEADBEEF;
      	tr1.calc_csm();
        tr1.display();
      	
      	tr2.addr = 32'hFEEBDEAD;
      	tr2.calc_csm();
        tr2.display();
      	
      	tr3.addr = 32'hBABABABA;
      	tr3.calc_csm();
        tr3.display();
        
    end
endprogram