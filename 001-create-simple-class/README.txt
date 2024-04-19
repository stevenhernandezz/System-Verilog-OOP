Instructions for Completing data_ctrl.svh

    Declare Class Attributes:
        Open the data_ctrl.svh file.
        In the DataCtrl class, declare four 8-bit wide logic variables to hold data. These should be named data1, data2, data3, and data4. The declaration for these has been partially done, but make sure each variable is correctly defined as shown in the initial snippet.

Instructions for Completing testbench.sv

    Include the Data Control Class:
        At the beginning of the testbench.sv file, make sure the DataCtrl class is correctly included using the include directive with the path to the data_ctrl.svh file.
        Example: include "data_ctrl.svh" `

    Declare an Instance of the DataCtrl Class:
        In the tb module, declare an instance of DataCtrl. This instance is used to access and manipulate the data variables data1, data2, data3, and data4.

    Instantiate the DataCtrl Object:
        Inside the initial block, instantiate the DataCtrl object using the new() method. Assign this new instance to your previously declared instance variable.

    Initialize Data Members:
        Define four localparam variables to initialize data1, data2, data3, and data4 with hexadecimal values. This step includes declaring and initializing these parameters at the start of the initial block.
        Use these localparam values to set the values of data1, data2, data3, and data4 respectively.

    Add an Assertion Check:
        Immediately after initializing the data members, add an assert statement to verify that the data members were correctly initialized to the expected values.
        Include an error message that will be displayed if the assertion fails, providing feedback on incorrect data initialization.

    Display Data Values:
        Use the $display system task to print out the values of data1, data2, data3, and data4 to confirm they hold the correct values. Format the output to display these values in hexadecimal.

    Clear the Instance at the End:
        At the end of the initial block, set the instance of DataCtrl to null to indicate that the object is no longer needed and can be cleared from memory.

Additional Tasks

    Simulation:
        Run a simulation of the testbench module to ensure that all elements are correctly initialized, and the assert and display functionalities are working as expected.
    Error Checking:
        Modify one of the initialization parameters to an incorrect value and observe the behavior of the assert statement. Make sure the error message is clear and correct.

These instructions aim to guide the students through understanding and applying basic SystemVerilog concepts such as class instantiation, parameter usage, assertions, and simulation.
