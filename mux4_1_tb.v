// Code your testbench here
// or browse Examples

module mux4_tb();
  reg[3:0]i;
  reg [1:0] sel;
  wire y;
  mux_4_1 dut(i,sel,y);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  task initialize;
    begin
      {i,sel} = 0;
      #10;
    end
  endtask
    task inputs(input [3:0]j, input [1:0]k);
      begin
        i=j;
        sel=k;
      end
    endtask
    initial
      begin
        initialize;
        inputs(4'd5,2'd2);
        #10;
        inputs(4'd15,2'd3);
        #10;
        inputs(4'd6,2'd1);
        #10;
      end
endmodule
    