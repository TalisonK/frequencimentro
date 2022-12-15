module decodificador(limpar, seletor, reg_5, reg_4, reg_3, reg_2, reg_1, segd_freq, segd_5, segd_4, segd_3, segd_2, segd_1 );
    
  input limpar;
  input bit[3:0] seletor;

  input [4:0] reg_5;
  input [4:0] reg_4;
  input [4:0] reg_3;
  input [4:0] reg_2;
  input [4:0] reg_1;

  output logic [6:0] segd_5;
  output logic [6:0] segd_4;
  output logic [6:0] segd_3;
  output logic [6:0] segd_2;
  output logic [6:0] segd_1;
  output logic [6:0] segd_freq;
  
  //7'b1000000
  //=================
  //Meio
  //Esquerda cima
  //Esquerda baixo
  //Baixo
  //Direita baixo
  //Direita cima
  //Cima
  //=================
  
  
  
	always_comb
	  begin     
        case (reg_1)
            4'b0000 : segd_1 = 7'b1000000;
            4'b0001 : segd_1 = 7'b1111001;
            4'b0010 : segd_1 = 7'b0100100;
            4'b0011 : segd_1 = 7'b0110000;
            4'b0100 : segd_1 = 7'b0011001;
            4'b0101 : segd_1 = 7'b0010010;
            4'b0110 : segd_1 = 7'b0000010;
            4'b0111 : segd_1 = 7'b1111000;
            4'b1000 : segd_1 = 7'b0000000;
            4'b1001 : segd_1 = 7'b0011000;
            default : segd_1 = 7'b1111111;
        endcase
      end

	always_comb
	  begin
          case (reg_2)
            4'b0000 : segd_2 = 7'b1000000;
            4'b0001 : segd_2 = 7'b1111001;
            4'b0010 : segd_2 = 7'b0100100;
            4'b0011 : segd_2 = 7'b0110000;
            4'b0100 : segd_2 = 7'b0011001;
            4'b0101 : segd_2 = 7'b0010010;
            4'b0110 : segd_2 = 7'b0000010;
            4'b0111 : segd_2 = 7'b1111000;
            4'b1000 : segd_2 = 7'b0000000;
            4'b1001 : segd_2 = 7'b0011000;
            default : segd_2 = 7'b1111111;
        endcase
      end  
  
	always_comb
	  begin
          case (reg_3)
            4'b0000 : segd_3 = 7'b1000000;
            4'b0001 : segd_3 = 7'b1111001;
            4'b0010 : segd_3 = 7'b0100100;
            4'b0011 : segd_3 = 7'b0110000;
            4'b0100 : segd_3 = 7'b0011001;
            4'b0101 : segd_3 = 7'b0010010;
            4'b0110 : segd_3 = 7'b0000010;
            4'b0111 : segd_3 = 7'b1111000;
            4'b1000 : segd_3 = 7'b0000000;
            4'b1001 : segd_3 = 7'b0011000;
            default : segd_3 = 7'b1111111;
        endcase
      end  
  

	always_comb
	  begin
          case (reg_4)
            4'b0000 : segd_4 = 7'b1000000;
            4'b0001 : segd_4 = 7'b1111001;
            4'b0010 : segd_4 = 7'b0100100;
            4'b0011 : segd_4 = 7'b0110000;
            4'b0100 : segd_4 = 7'b0011001;
            4'b0101 : segd_4 = 7'b0010010;
            4'b0110 : segd_4 = 7'b0000010;
            4'b0111 : segd_4 = 7'b1111000;
            4'b1000 : segd_4 = 7'b0000000;
            4'b1001 : segd_4 = 7'b0011000;
            default : segd_4 = 7'b1111111;
        endcase
      end  

    always_comb
    begin
        case (reg_5)
        4'b0000 : segd_5 = 7'b1000000;
        4'b0001 : segd_5 = 7'b1111001;
        4'b0010 : segd_5 = 7'b0100100;
        4'b0011 : segd_5 = 7'b0110000;
        4'b0100 : segd_5 = 7'b0011001;
        4'b0101 : segd_5 = 7'b0010010;
        4'b0110 : segd_5 = 7'b0000010;
        4'b0111 : segd_5 = 7'b1111000;
        4'b1000 : segd_5 = 7'b0000000;
        4'b1001 : segd_5 = 7'b0011000;
        default : segd_5 = 7'b1111111;
    endcase
    end  
  
    always_comb
	  begin
        case (seletor)
            3'b000 : segd_freq = 7'b1000000;
            3'b001 : segd_freq = 7'b1111001;
            3'b010 : segd_freq = 7'b0100100;
            3'b011 : segd_freq = 7'b0110000;
            3'b100 : segd_freq = 7'b0011001;
            3'b101 : segd_freq = 7'b0010010;
            3'b110 : segd_freq = 7'b0000010;
            3'b111 : segd_freq = 7'b1111000;
            default : segd_freq = 7'b1111111;
        endcase
      end  
endmodule