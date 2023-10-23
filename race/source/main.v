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
`define UD #1

module led_light (
    input       clk,
    input       rstn,
    output[7:0] led
);

    reg[24:0] led_light_cnt;
    reg[7:0] led_status;

    always @(posedge clk) 
    begin
        if(!rstn)
            led_light_cnt <= `UD 25'd0;
        else if(led_light_cnt == 25'd2499_9999)
            led_light_cnt <= `UD 25'd0;
        else
            led_light_cnt <= `UD led_light_cnt + 25'd1;
    end
    
    always @(posedge clk)
    begin
        if(!rstn)
            led_status <= `UD 8'b0000_0001;
        else if(led_light_cnt == 25'd2499_9999)
            led_status <= `UD{led_status[6:0],led_status[7]};
    end
    assign led = led_status;

endmodule
































