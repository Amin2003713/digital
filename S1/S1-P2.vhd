entity Home_Work_2 is
    port(
        a, b, c : in bit    ;
        z : out BIT
    );
end  Home_Work_2 ;

architecture Home_Work_2_Defenition of Home_Work_2 is
    signal Or_Gate , Not_gate ,Xor_Gate , And_Gate : bit;
begin
    Or_Gate <= a or b ;
    And_Gate <= a AND b ;
    Not_gate <= not And_Gate ;
    Xor_Gate <= Not_gate Xor Or_Gate XOR c ;
    Z <= c;
end architecture Home_Work_1_Defenition;