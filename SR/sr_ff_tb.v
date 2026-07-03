`timescale 1ns/1ps

module sr_ff_tb;

reg clk;
reg s;
reg r;
wire q;

// DUT Instantiation
sr_ff DUT (
    .clk(clk),
    .s(s),
    .r(r),
    .q(q)
);

// Clock Generation
always #5 clk = ~clk;

initial begin

    // Generate VCD file
    $dumpfile("sr_ff.vcd");
    $dumpvars(0, sr_ff_tb);

    // Display signal values
    $monitor("Time=%0t clk=%b s=%b r=%b q=%b",
              $time, clk, s, r, q);

    // Initialize signals
    clk = 0;
    s = 0;
    r = 0;

    // Hold
    s = 0;
    r = 0;
    #10;

    // Reset
    s = 0;
    r = 1;
    #10;

    // Set
    s = 1;
    r = 0;
    #10;

    // Invalid
    s = 1;
    r = 1;
    #10;

    $finish;

end

endmodule