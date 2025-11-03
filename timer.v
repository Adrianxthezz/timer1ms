module timer (
    input clk,
    input rst,
    output reg t_o 
);

    parameter meta_timer = 100000 - 1;
    reg [16:0] count;

    always @(*) begin
        if (count == meta_timer) t_o <= 1;
        else t_o <= 0;
    end

    always @(posedge clk, negedge rst) begin
        if (rst == 0) count <= 0;
        else if (t_o == 1) count <= 0;
        else count <= count + 1;
    end
endmodule
