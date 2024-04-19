In this exercise, you will implement a Transaction class using a static variable to track and assign a unique ID to each instance created. This feature is particularly useful in environments where tracking or logging of each transaction instance is required.
Part 1: Define the Transaction Class with a Static Variable

    Package Creation:
        Define a package named transaction_util. Packages are used to encapsulate verification components, making them reusable across different modules or testbenches.

    Class Definition:
        Within the package, declare the Transaction class and include:
            Static Variable: Declare a static integer variable count initialized to 0. This variable will be used to count the number of Transaction instances created.
            Instance Variables:
                id (integer): Unique identifier for each transaction instance, assigned from the static count.
                addr (32-bit unsigned): Transaction address.
                csm (32-bit unsigned): Checksum of the transaction.
                data (array of eight 32-bit unsigned integers): Data associated with the transaction.
            Constructor and Methods Declarations:
                Declare an external constructor and methods (display() and calc_csm()) using the extern keyword, indicating their definitions are provided outside the class body.

    Constructor and Method Definitions:
        Constructor: Define the constructor new() to initialize addr and data, set the instance’s id to count, and then increment count. This mechanism ensures each instance has a unique ID.
        Display Method: Define display() to print the transaction’s ID, address, checksum, and data.
        Checksum Calculation Method: Define calc_csm() to calculate the checksum by XORing the addr with the XOR of all elements in the data array.

Part 2: Implementing the Testbench Using program automatic

    Include the Package: Begin with the include directive for the transaction_util.svh file.
    Program Definition:
        Define a program automatic named tb_top. Using program automatic ensures that each variable within the program block is allocated separately, avoiding conflicts in multi-threaded environments and enhancing reentrancy.
    Instantiation and Initialization:
        Declare three Transaction instances: tr1, tr2, and tr3.
        Define and initialize separate data arrays for each instance (data1, data2, data3) with different default values.
        Instantiate each Transaction with specific address and data values.
    Execution:
        Calculate the checksum and display transaction details for each instance, ensuring each instance maintains its unique identity and values.
