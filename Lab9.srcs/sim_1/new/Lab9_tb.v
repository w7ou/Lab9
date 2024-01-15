`timescale 1ns / 1ps
module Lab9_tb;
wire EvenParity;
reg [15:0]data=16'b0000000000000000;
reg clk=1'b0;
Lab_9 uut(.data(data),.EvenParity(EvenParity),.clk(clk));
initial begin
forever #5 clk=~clk;
end
initial begin
#50 data=16'b0000000000110111;
#100 data=16'b0000000000101101;
#100 data=16'b0000000000111111;
#100 $finish;
end
initial begin
$monitor($time,"Data=%16b,output=%b",data,EvenParity);
end
endmodule