`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2016 12:25:44 AM
// Design Name: 
// Module Name: mooreMachine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mooreMachine(input logic clock,
                    input logic reset,
                    input logic fiveKurus,
                    input logic tenKurus,
                    input logic twentyFiveKurus,
                    output logic theProduct
                    );

logic[2:0] currentState, nextState;

parameter State0 = 3'b000;
parameter State1 = 3'b001;
parameter State2 = 3'b010;
parameter State3 = 3'b011;
parameter State4 = 3'b100;
parameter State5 = 3'b101;
parameter State6 = 3'b110;

always_ff@(posedge clock, posedge reset)
    if(reset) currentState <= State0;
    else      currentState <=nextState;

always_comb
    case(currentState)
    State0:if (fiveKurus== 1'b1 && tenKurus==1'b0 && twentyFiveKurus==1'b0)
                begin
                nextState = State1;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b1 && twentyFiveKurus==1'b0)
                begin
                nextState=State2;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b0 && twentyFiveKurus==1'b1)
                begin
                nextState=State5;
                theProduct = 1'b0;
                end
           else
                begin
                nextState = currentState;
                theProduct = 1'b0;
                end
    State1:if (fiveKurus== 1'b1 && tenKurus==1'b0 && twentyFiveKurus==1'b0)
                begin
                nextState = State2;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b1 && twentyFiveKurus==1'b0)
                begin
                nextState=State3;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b0 && twentyFiveKurus==1'b1)
                begin
                nextState=State6;
                theProduct = 1'b0;
                end
           else
                begin
                nextState = currentState;
                theProduct = 1'b0;
                end
    State2:if (fiveKurus== 1'b1 && tenKurus==1'b0 && twentyFiveKurus==1'b0)
                begin
                nextState = State3;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b1 && twentyFiveKurus==1'b0)
                begin
                nextState=State4;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b0 && twentyFiveKurus==1'b1)
                begin
                nextState=State0;
                theProduct = 1'b1;
                end
           else
                begin
                nextState = currentState;
                theProduct = 1'b0;
                end
    State3:if (fiveKurus== 1'b1 && tenKurus==1'b0 && twentyFiveKurus==1'b0)
                begin
                nextState = State4;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b1 && twentyFiveKurus==1'b0)
                begin
                nextState=State5;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b0 && twentyFiveKurus==1'b1)
                begin
                nextState=State0;
                theProduct = 1'b1;
                end
           else
                begin
                nextState = currentState;
                theProduct = 1'b0;
                end
    State4:if (fiveKurus== 1'b1 && tenKurus==1'b0 && twentyFiveKurus==1'b0)
                begin
                nextState = State5;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b1 && twentyFiveKurus==1'b0)
                begin
                nextState=State6;
                theProduct = 1'b0;
                end
           else if(fiveKurus== 1'b0 && tenKurus==1'b0 && twentyFiveKurus==1'b1)
                begin
                nextState=State0;
                theProduct = 1'b1;
                end
           else
                begin
                nextState = currentState;
                theProduct = 1'b0;
                end
    State5:if (fiveKurus== 1'b1 && tenKurus==1'b0 && twentyFiveKurus==1'b0)
               begin
               nextState = State6;
               theProduct = 1'b0;
               end
           else if(fiveKurus== 1'b0 && tenKurus==1'b1 && twentyFiveKurus==1'b0)
               begin
               nextState=State0;
               theProduct = 1'b1;
               end
           else if(fiveKurus== 1'b0 && tenKurus==1'b0 && twentyFiveKurus==1'b1)
               begin
               nextState=State0;
               theProduct = 1'b1;
               end
           else
               begin
               nextState = currentState;
               theProduct = 1'b0;
               end
    State6:if (fiveKurus== 1'b1 && tenKurus==1'b0 && twentyFiveKurus==1'b0)
               begin
               nextState =State0;
               theProduct = 1'b1;
               end
           else if(fiveKurus== 1'b0 && tenKurus==1'b1 && twentyFiveKurus==1'b0)
               begin
               nextState=State0;
               theProduct = 1'b1;
               end
           else if(fiveKurus== 1'b0 && tenKurus==1'b0 && twentyFiveKurus==1'b1)
               begin
               nextState=State0;
               theProduct = 1'b1;
               end
           else
               begin
               nextState = currentState;
               theProduct = 1'b0;
               end
                                     
default: nextState = State0;
endcase
endmodule
