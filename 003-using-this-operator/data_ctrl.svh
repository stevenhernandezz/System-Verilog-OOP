// Define the DataCtrl class with four 8-bit wide logic attributes
class DataCtrl;
  // Class attributes for storing data
  logic [7:0] data1, data2, data3, data4;
  // Write a constructor for initializing the data attributes
  // Default values are 0 for each attribute if not specified during object creation
  function new(input logic [7:0] init_data1 = 8'h0, input logic [7:0] init_data2 = 8'h0, input logic [7:0] init_data3 = 8'h0, input logic [7:0] init_data4 = 8'h0);
  // Name of the parameters are the same as attributes as shown below.
  // You need to use the `this` operator to distinguish between class attributes
    this.data1 = init_data1;
    this.data2 = init_data2;
    this.data3 = init_data3;
    this.data4 = init_data4;
  endfunction
endclass