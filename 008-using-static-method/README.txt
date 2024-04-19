In this task, you will develop a SystemVerilog code using static methods within a class, alongside static variables. This setup is beneficial for shared configurations or settings across instances of a class, demonstrating a common practice in complex verification environments where centralized settings or counters are necessary.
Part 1: Define Classes and Static Methods in a Package

    Package and Class Definitions:
        Package: Create a package named transaction_util to encapsulate the classes and methods.
        Config Class:
            Define a class Config with an integer member num_trans which represents a configuration parameter such as the number of transactions.
            Provide a constructor with a display message to confirm the object’s creation and display the initialized value.
        Transaction Class:
            Declare a static variable cfg of type Config to hold the configuration for all transactions.
            Declare a static integer count initialized to 0 to keep track of the number of Transaction instances created.
            Declare an integer id for each instance of the Transaction.
            Provide a constructor to initialize the id and increment the static count each time a new instance is created.

    Static Method Definition:
        Define a static method display_statics() within the Transaction class:
            Check if cfg is null and display an error message if it is.
            Otherwise, display the num_trans from cfg and the count of transaction instances. This method showcases how static methods can access static variables and perform operations or display data relevant to the class as a whole, rather than individual instances.

Part 2: Implementing the Testbench Using program automatic

    Include the Package: Start with the include directive to incorporate the transaction_util.svh file.
    Program Definition:
        Define a program automatic named static_methods_tb to ensure each variable within the program block is allocated independently, preventing conflicts in potentially multi-threaded simulations.
    Instantiation and Configuration:
        Instantiate a Config object cfg with a specific number of transactions (num_trans set to 42).
        Declare and instantiate an array trans of Transaction objects.
        Initialize each Transaction in the array with a unique id using a loop.
        Set the static cfg variable in the Transaction class to the instantiated Config object. This step is crucial as it assigns the shared configuration to all transactions.
    Static Method Call:
        Call the static method Transaction::display_statics() to display the shared configuration and count of transactions.

