module mux_4_1(i,sel,y);
  input[3:0]i;
  input sel;
  output reg y;
  always@(i,sel)
    begin
      case(sel)
        2'd0 : y = i[0];
        2'd1 : y = i[1];
        2'd2 : y = i[2];
        2'd3 : y = i[3];
        default y = 1'b0;
      endcase
    end
endmodule
