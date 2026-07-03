module sr_ff(
    input clk,
    input s,
    input r,
    output reg q
);

always @(posedge clk)
begin
    if (s == 1'b0 && r == 1'b0)
        q <= q;          // Hold
    else if (s == 1'b0 && r == 1'b1)
        q <= 1'b0;       // Reset
    else if (s == 1'b1 && r == 1'b0)
        q <= 1'b1;       // Set
    else
        q <= 1'bx;       // Invalid State
end

endmodule