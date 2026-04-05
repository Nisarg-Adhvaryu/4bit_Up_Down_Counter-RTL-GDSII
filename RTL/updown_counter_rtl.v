`timescale 1ns / 1ps

module updown_counter (
    input Clock,
    input rst,
    input dir,              
    output reg [3:0] count
);

always @(posedge Clock or posedge rst) begin
    if (rst)
        count <= 4'b0000;
    else begin
        if (dir == 1'b1)
            count <= count + 1;   
        else
            count <= count - 1;   
    end
end

endmodule


