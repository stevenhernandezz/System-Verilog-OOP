In this exercise, you will enhance your understanding of organizing SystemVerilog code using packages and the use of program automatic in testbenches. The goal is to write a class Transaction encapsulated within a package and a testbench implemented as a program automatic to simulate transaction operations.
Part 1: Define the Package and Transaction Class

    Create a Package:
        Define a package named transaction_util. Packages in SystemVerilog allow you to encapsulate and organize related classes, tasks, and functions. This modularity helps in reusing verification components across multiple testbenches or projects.
    Class Definition:
        Inside the package, define a class named Transaction.
        Attributes:
            addr (32-bit unsigned): Stores the transaction address.
            csm (32-bit unsigned): Holds the checksum of the transaction.
            data (an array of eight 32-bit unsigned integers): Contains transaction data.
        Methods:
            Display Method: Implement a method display() to print addr, csm, and data using $display.
            Checksum Calculation Method: Create a method calc_csm() that calculates the checksum by XORing addr with the XOR of all elements in the data array.
        End of Package: Ensure to close the package declaration properly.

Part 2: Write the Testbench Using program automatic

    Include the Package: Use the include directive to include the transaction_util.svh file at the beginning of your testbench file.
    Define Program Automatic:
        Define a program named tb_top using the keyword automatic. The automatic keyword in SystemVerilog is crucial for testbenches as it ensures that all variables declared within the program block are automatically allocated. This helps prevent issues with shared variable access across multiple invocations of the program block, supporting reentrancy.
    Using the Package:
        Import the contents of the transaction_util package with import transaction_util::*;. This statement makes all public identifiers from the package available in the program.
    Instantiation and Initialization:
        Instantiate the Transaction class as T.
        In an initial block, initialize the attributes (addr, csm, and data) of T with specific hexadecimal values suitable for testing.
    Execution:
        Call the calc_csm() method to compute the checksum.
        Call the display() method to output the transaction details.

Additional Guidelines

    Modularity and Reuse: By using a package, you centralize the definition of the Transaction class, making it reusable and easily maintainable. This approach is highly beneficial in large projects where multiple testbenches might need to use the same verification components.
    Clarity and Structure: program automatic blocks enhance the clarity and structure of your testbenches, providing a more deterministic and safe simulation environment, especially in complex and concurrent scenarios.
