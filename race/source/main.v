`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////
//Company : MEYESEMI Technology CO., Ltd
//Internet site : 
// WeChat public account : MEYESEMI
//Engineer : Nill
//
//Create Date : 2023/10/23
//Design Name : main
//Module Name : main
//Project Name : main
//Target Devices : Pango
//Tool Versions :
//Description :
//
//Dependencies :
//
//Revision : Revision 0.01 - File Created
//Additional Comments :
//
////////////////////////////////////////////////////////////////////////

module mux (
    input wire [0:0]    in_1,
    input wire          in_2,
    input wire          sel,

    output reg          out        
);

always @(*) 
begin
    if(sel == 1'b1)
        out = in_1;
    else 
        out = in_2; 
end

    
endmodule































