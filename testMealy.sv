`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2016 01:08:59 AM
// Design Name: 
// Module Name: testMoore
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


module testMealy();

logic clock, reset,fiveKurus,tenKurus,twentyFiveKurus,theProduct;

mealyMachine test1 (clock, reset,fiveKurus,tenKurus,twentyFiveKurus,theProduct);

always
begin
    clock = 1; #5; clock = 0; #5;
end

initial
begin
reset=0;fiveKurus=0;tenKurus=1;twentyFiveKurus=0; #10;
fiveKurus=1;tenKurus=0;twentyFiveKurus=0; #10;
fiveKurus=1;tenKurus=0;twentyFiveKurus=0; #10;
fiveKurus=0;tenKurus=1;twentyFiveKurus=0; #10;
fiveKurus=0;tenKurus=1;twentyFiveKurus=0; #10;
fiveKurus=0;tenKurus=1;twentyFiveKurus=0; #10;
fiveKurus=0;tenKurus=1;twentyFiveKurus=0; #10;
fiveKurus=0;tenKurus=1;twentyFiveKurus=0; #10;
fiveKurus=0;tenKurus=0;twentyFiveKurus=0; #10;
end
endmodule
