  // Define the DataCtrl class with four 8-bit wide logic attributes
class DataCtrl;
  // Class attributes for storing data
  logic [7:0] data1, data2, data3, data4;
   // Write a constructor for initializing the data attributes
  function new(input logic [7:0] init_data1 = 8'h0, input logic [7:0] init_data2 = 8'h0, input logic [7:0] init_data3 = 8'h0, input logic [7:0] init_data4 = 8'h0);
  // Default values are 0 for each attribute if not specified during object creation
   data1 = init_data1;
   data2 = init_data2;
   data3 = init_data3;
   data4 = init_data4;
endfunction

endclass