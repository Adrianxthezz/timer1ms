`timescale 1ns/1ns

module timer_tb;
    reg clk; reg rst;
    wire t_o;

timer DUT (
    .clk(clk),
    .rst(rst),
    .t_o(t_o)
);

initial begin
    forever begin
        #5; 
        clk = ~clk;
    end
end

initial 
begin 
clk = 0; rst = 1;
#10;
rst = 0;
#10;
rst = 1;

#50000;
rst = 0;
#20;
rst = 1;
#3000000;

$finish;
end
endmodule
