module Decode (reset, arm, cont_3, cont_2, cont_1, cont_0, bcd_3, bcd_2, bcd_1, bcd_0 );
    
  input reset, arm;
  input [3:0] cont_3, cont_2, cont_1, cont_0;
  output logic [6:0] bcd_3, bcd_2, bcd_1, bcd_0;
  
	always_comb
	  begin
        if(!reset)
          bcd_0 = 7'b1111111;
        else
          if (arm)          
            case (cont_0) 
              4'b0000 : bcd_0 = 7'b1000000;
              4'b0001 : bcd_0 = 7'b1111001;
              4'b0010 : bcd_0 = 7'b0100100;
              4'b0011 : bcd_0 = 7'b0110000;
              4'b0100 : bcd_0 = 7'b0011001;
              4'b0101 : bcd_0 = 7'b0010010;
              4'b0110 : bcd_0 = 7'b0000010;
              4'b0111 : bcd_0 = 7'b1111000;
              4'b1000 : bcd_0 = 7'b0000000;
              4'b1001 : bcd_0 = 7'b0011000;      
              default : bcd_0 = 7'b1111111;
            endcase
          else
            bcd_0 = bcd_0;
      end

	always_comb
	  begin
        if(!reset)
          bcd_1 = 7'b1111111;
        else
          if (arm)          
            case (cont_1) 
              4'b0000 : bcd_1 = 7'b1000000;
              4'b0001 : bcd_1 = 7'b1111001;
              4'b0010 : bcd_1 = 7'b0100100;
              4'b0011 : bcd_1 = 7'b0110000;
              4'b0100 : bcd_1 = 7'b0011001;
              4'b0101 : bcd_1 = 7'b0010010;
              4'b0110 : bcd_1 = 7'b0000010;
              4'b0111 : bcd_1 = 7'b1111000;
              4'b1000 : bcd_1 = 7'b0000000;
              4'b1001 : bcd_1 = 7'b0011000;      
              default : bcd_1 = 7'b1111111;
            endcase
          else
            bcd_1 = bcd_1;
      end  
  
	always_comb
	  begin
        if(!reset)
          bcd_2 = 7'b1111111;
        else
          if (arm)          
            case (cont_2) 
              4'b0000 : bcd_2 = 7'b1000000;
              4'b0001 : bcd_2 = 7'b1111001;
              4'b0010 : bcd_2 = 7'b0100100;
              4'b0011 : bcd_2 = 7'b0110000;
              4'b0100 : bcd_2 = 7'b0011001;
              4'b0101 : bcd_2 = 7'b0010010;
              4'b0110 : bcd_2 = 7'b0000010;
              4'b0111 : bcd_2 = 7'b1111000;
              4'b1000 : bcd_2 = 7'b0000000;
              4'b1001 : bcd_2 = 7'b0011000;      
              default : bcd_2 = 7'b1111111;
            endcase
          else
            bcd_2 = bcd_2;
      end  
  

	always_comb
	  begin
        if(!reset)
          bcd_3 = 7'b1111111;
        else
          if (arm)          
            case (cont_3) 
              4'b0000 : bcd_3 = 7'b1000000;
              4'b0001 : bcd_3 = 7'b1111001;
              4'b0010 : bcd_3 = 7'b0100100;
              4'b0011 : bcd_3 = 7'b0110000;
              4'b0100 : bcd_3 = 7'b0011001;
              4'b0101 : bcd_3 = 7'b0010010;
              4'b0110 : bcd_3 = 7'b0000010;
              4'b0111 : bcd_3 = 7'b1111000;
              4'b1000 : bcd_3 = 7'b0000000;
              4'b1001 : bcd_3 = 7'b0011000;      
              default : bcd_3 = 7'b1111111;
            endcase
          else
            bcd_3 = bcd_3;
      end  
  
endmodule
