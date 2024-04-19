In this task, you will create a Transaction class in SystemVerilog using external method definitions within a package. This approach separates the interface (method declarations) from the implementation (method definitions), enhancing code readability and maintenance. This structure is particularly useful in larger projects for managing complex functionalities more effectively.
Part 1: Define the Transaction Class and Package

    Create a Package:
        Define a package named transaction_util. Using a package helps in organizing related functionalities and makes it easier to manage and reuse them across different modules or testbenches.

    Class Definition:
        Inside the package, declare a class named Transaction with the following structure:
            Attributes:
                addr (32-bit unsigned): Stores the transaction's address.
                csm (32-bit unsigned): Holds the checksum of the transaction.
                data (an array of eight 32-bit unsigned integers): Contains the data associated with the transaction.
            Method Declarations:
                Declare two external methods within the class: display() and calc_csm(). Use the extern keyword for these declarations, which indicates that their definitions will be provided outside the class body.

    Method Definitions:
        Outside of the class but still within the package, define the two methods:
            Display Method: Define display() using function void Transaction::display(). Implement this function to print the addr, csm, and data in a formatted style using SystemVerilog’s $display function.
            Checksum Calculation Method: Define calc_csm() using function void Transaction::calc_csm(). Implement this function to compute the checksum by XORing addr with the XOR of all elements in the data array. This demonstrates handling bitwise operations on arrays.

Part 2: External Method Definitions and Their Advantages

    Clarity and Separation: By defining methods externally, you separate the implementation details from the class interface, which can simplify the class body and make it easier for others to understand the class structure without getting into the details of method implementations.
    Maintenance: This approach facilitates easier maintenance and updates to the method logic without altering the class interface, helping in larger projects where classes are frequently reused.
    Reusability: External definitions allow multiple classes or packages to potentially extend or modify these methods without changing the original class definition, enhancing the reusability of code.

