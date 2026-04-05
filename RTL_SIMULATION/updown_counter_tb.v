`timescale 1ns / 1ps
module updown_counter_tb;

reg Clock, rst, dir;
wire [3:0] count;

updown_counter uut (
    .Clock(Clock),
    .rst(rst),
    .dir(dir),
    .count(count)
);
always #5 Clock = ~Clock;

initial begin
	$fsdbDumpfile("updown_counter");
	$fsdbDumpvars();
    Clock = 0;
    rst = 1;
    dir = 1;

    #10 rst = 0;

    dir = 1;
    #80;

    dir = 0;
    #80;

    dir = 1;
    #50;

    $finish;
end

initial begin
    $monitor("Time=%0t | rst=%b | dir=%b | count=%d", $time, rst, dir, count);
end
endmodule
