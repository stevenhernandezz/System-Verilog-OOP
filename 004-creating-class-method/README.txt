Instruction for Writing the Code

In this exercise, you are required to write SystemVerilog code consisting of a class Transaction and a testbench module tb_top. The class Transaction will contain attributes and methods related to a transaction object including address, checksum, and data. The testbench tb_top will instantiate this class and simulate a simple test.
Part 1: Define the Transaction Class

    Class Definition: Define a class named Transaction.
    Attributes: Inside the class, declare the following attributes:
        addr (32-bit unsigned): to store the address of the transaction.
        csm (32-bit unsigned): to store the checksum of the transaction.
        data (an array of eight 32-bit unsigned integers): to store data values.
    Methods:
        Display Method: Define a method display() in the class that when called, prints the values of addr, csm, and data in hexadecimal format. Use SystemVerilog's $display function for printing.
        Checksum Calculation Method: Define a method calc_csm() that calculates the checksum by performing a bitwise XOR of addr and the XOR of all elements in the data array. Store the result in csm.

Part 2: Write the Testbench

    Include the Transaction Class: Use the include directive to include the Transaction class definition file (transaction.svh).
    Module Definition: Define a module tb_top for the testbench.
    Instantiation and Initialization:
        Instantiate an object T of class Transaction.
        In an initial block, initialize T and set the values of addr, csm, and data using hexadecimal values for testing.
    Execution:
        Call the calc_csm() method on the instance T to calculate the checksum based on the current address and data.
        Call the display() method to print the values of addr, csm, and data.

Additional Requirements

    Ensure you handle hexadecimal values correctly when initializing and displaying.
    The testbench should simulate a single cycle where the transaction object is initialized, the checksum is calculated, and values are displayed.
