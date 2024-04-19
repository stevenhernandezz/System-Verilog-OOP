`include "transaction_util.svh"

program automatic tb_top;
    import transaction_util::*;
    Transaction T;

    initial begin
        T = new();

        T.addr = 32'hDEADBEEF;
        T.csm = 32'hCAFEBABA;
        T.data = '{
            32'hFFFFFFFF, 
            32'hBBBBBBBB, 
            32'hAAAAAAAA, 
            32'h12341234, 
            32'h98769876, 
            32'h12341234, 
            32'hAAAAAAAA, 
            32'hFFFFFFFF
                };

        T.calc_csm();
        T.display();
        
    end
endprogram