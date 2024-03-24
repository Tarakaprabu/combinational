module decod3_8(in,en,y);
  input en;
  input[2:0] in;
  output [7:0] y;
  
  always@(en or in)
    begin
      
      if(en)
        begin
          
          y = 8'b0;
          case(in)
            3'b000 :y[0] = 1'b1;
            3'b001 :y[1] = 1'b1;
            3'b010 :y[2] = 1'b1;
            3'b011 :y[3] = 1'b1;
            3'b100 :y[4] = 1'b1;
            3'b101 :y[5] = 1'b1;
            3'b110 :y[6] = 1'b1;
            3'b111 :y[7] = 1'b1;
            default :y = 8'b0;
          endcase
        end
    end
endmodule
      
