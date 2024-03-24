// Code your testbench here
// or browse Examples
module decod_3_8_tb();
  reg [2:0] i1;
  reg en;
  wire [7:0] out;
  integer i;
  decod3_8 dcod(i1,en,out);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  initial
    begin
      $monitor(" i1 = %d, out = %d", i1,out);
      
      for(i=0; i<16; i=i+1)
        begin
          {in,en} = i;
        end
    end
endmodule