`include "data_ctrl.svh"

module tb_top; 
  // Declare an instance of the DataCtrl class
  DataCtrl myDataCtrl;
  
  initial begin
    // Define local parameters for data initialization
    localparam logic [7:0] init_data1 = 8'hAA;
    localparam logic [7:0] init_data2 = 8'hAB;
    localparam logic [7:0] init_data3 = 8'hAC;
    localparam logic [7:0] init_data4 = 8'hAD;  
    
    // Instantiate the DataCtrl object
    myDataCtrl = new();
    
    // Delay for simulation time-step
    #10;
    
    // Initialize data members with localparam values
    myDataCtrl.data1 = init_data1;
    myDataCtrl.data2 = init_data2;
    myDataCtrl.data3 = init_data3;
    myDataCtrl.data4 = init_data4;
    
    // Assert to ensure data initialization is as expected 
    assert (myDataCtrl.data1 == init_data1 && myDataCtrl.data2 == init_data2 &&
            myDataCtrl.data3 == init_data3 && myDataCtrl.data4 == init_data4)
    else $error("Init failed for data");
    
    // Display the values of the data members
    $display("data1: %h, data2: %h, data3: %h, data4: %h", 
             myDataCtrl.data1, myDataCtrl.data2, myDataCtrl.data3, myDataCtrl.data4);
    
    // Clear (null) the handler instance to release resources
    myDataCtrl = null;
  end
  
endmodule