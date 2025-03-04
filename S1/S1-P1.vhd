entity Home_Work_1 is
    port(
        a, b, c : in bit    ;
        o,z : out BIT
    );
end  Home_Work_1 ;

architecture Home_Work_1_Defenition of Home_Work_1 is
    signal Nand_Gate , Not_gate ,Xnor_Gate , And_Gate : bit;
begin
    Nand_Gate <= a NAND b ;
    Not_gate <= Not C;
    Xnor_Gate <= Not_gate XNOR Nand_Gate;
    And_Gate <= Xnor_Gate AND C ;
    o <= Xnor_Gate;
    z <= And_Gate;
end architecture Home_Work_1_Defenition;
