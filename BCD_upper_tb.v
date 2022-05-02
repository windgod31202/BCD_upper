module BCD_upper_tb;
reg clk,rst_asyn;
wire [3:0] Q_out;
initial begin
    #0;
    forever
    begin
        clk = 1'b0;
        #5 clk = 1'b1;
        #5;
    end
end
initial begin
    #0 rst_asyn=1'b1;
    #5 rst_asyn=1'b0;
    #55 rst_asyn=1'b1;  
    #5 rst_asyn=1'b0;
    #150 $finish;
end
BCD BCD_upper_tb(.clk(clk), .rst_asyn(rst_asyn), .Q_out(Q_out));
initial begin
    $dumpfile("BCD_upper.vcd");
    $dumpvars(0, BCD_upper_tb);
end
endmodule