module BCD(clk, rst_asyn, Q_out);
input clk; //I clock in
input rst_asyn; //I asyn reset
output [3:0] Q_out; // O asyn Result
reg [3:0] Q_out;

always@ (posedge clk or posedge rst_asyn)
begin
if (rst_asyn)
        Q_out=0;
    else if (Q_out == 9)
        Q_out=0;
    else
        Q_out=Q_out+1; end
 endmodule