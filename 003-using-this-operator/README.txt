Instructions for Completing the Code
1. Declare Class Attributes

    File: data_ctrl.svh
    Task: Within the DataCtrl class, your task is to declare four 8-bit wide logic variables. These should be named data1, data2, data3, and data4.
    Details: Make sure each variable is declared as a logic type with a bit width of 8 bits. The declared variables will serve as the class's primary data storage attributes.

2. Write a Constructor for Initializing Data Attributes

    File: data_ctrl.svh
    Task: Implement a constructor within the DataCtrl class. This constructor should initialize the class's data attributes. If no values are provided during object creation, default values should be set to 0 for each attribute. The constructor parameters have the same name as the class attributes.
    Details: The constructor function should be named new. It must accept four input parameters, each corresponding to one of the data attributes (data1 through data4). Each parameter should have a default value, ensuring that if no values are specified during the object creation, the attributes are initialized to 0.

3. Instantiate the DataCtrl Object with Custom Initialization Values

    File: testbench.sv
    Task: In the tb_top module, create an instance of the DataCtrl class using the constructor. This instance should be initialized with specific values.
    Details: Use the localparam values defined within the module as the initialization values for the data attributes of the DataCtrl instance. Ensure that the object is correctly instantiated with these values.

4. Add an Assertion to Verify Data Initialization

    File: testbench.sv
    Task: After instantiating the DataCtrl object, implement an assertion to verify that the object's data attributes are correctly initialized to the expected values.
    Details: The assertion should check if the values of the data attributes (data1 through data4) match the initialization values passed to the constructor. If the assertion fails, an appropriate error message should be generated.

5. Display the Initialized Data Values

    File: testbench.sv
    Task: Use a SystemVerilog display statement to print the values of the data attributes from the DataCtrl instance.
    Details: Format the output to display the values in hexadecimal format, ensuring that the printed values correspond to the initialized values of the object.
