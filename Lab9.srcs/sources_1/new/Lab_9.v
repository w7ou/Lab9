`timescale 1ns / 1ps

module Lab_9(data,EvenParity,clk);
output reg EvenParity;
input [15:0]data;
input clk;
reg [2:0]a;
always @(posedge clk) begin
if(a==3) begin
p(EvenParity,data);
a<=0;
end
else begin
a<=a+1;
end
end
initial begin
a<=0;
repeat(3) @(posedge clk);
end
task p;
output EvenParity;
input [15:0]data;
begin
if ((^data)==0) begin
EvenParity=0;
end
else begin
EvenParity=1;
end
end
endtask
endmodule
