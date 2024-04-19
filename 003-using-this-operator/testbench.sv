`include "data_ctrl.svh"
// Testbench module to demonstrate the usage of the DataCtrl class
module tb_top;
  // Variable to hold the instance of DataCtrl
  DataCtrl myDataCtrl;
  
  // Define local parameters for data initialization
  localparam logic [7:0] init_data1 = 8'hBA;
  localparam logic [7:0] init_data2 = 8'hBB;
  localparam logic [7:0] init_data3 = 8'hBC;
  localparam logic [7:0] init_data4 = 8'hBD;
  
  initial begin
    // Creating a new instance of DataCtrl with custom initialization values
    myDataCtrl = new(init_data1, init_data2, init_data3, init_data4);
    
    // Assert the attributes for correction
    assert (myDataCtrl.data1 == init_data1 && myDataCtrl.data2 == init_data2 &&
            myDataCtrl.data3 == init_data3 && myDataCtrl.data4 == init_data4)
    else $error("Init failed for data");
    
    // Display the values of data1, data2, data3, and data4
	$display("data1: %h, data2: %h, data3: %h, data4: %h", 
             myDataCtrl.data1, myDataCtrl.data2, myDataCtrl.data3, myDataCtrl.data4);
  end
endmodule