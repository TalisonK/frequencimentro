`include "bcd.sv";
`include "mux.sv";
`include "registrador.sv";

module controlador(clk, amostra, seletor);
  
  input clk;
  input amostra;
  input bit[3:0] seletor;
  
  bit[3:0] estado;
  
  bit clockControle;
  
  mux(clk, seletor, clockControle);
  
  
  bit habilitar;
  bit limpar = 1;
  
  bit[4:0] display1;
  bit[4:0] display2;
  bit[4:0] display3;
  bit[4:0] display4;
  bit[4:0] display5;
  
  bcd(habilitar, limpar, amostra, display1, display2, display3, display4, display5);
  
  bit armazena;
  bit[4:0] reg_1;
  bit[4:0] reg_2;
  bit[4:0] reg_3;
  bit[4:0] reg_4;
  bit[4:0] reg_5;
  
  registrador_modulo(armazena, limpar, display1, display2, display3, display4, display5, reg_1, reg_2, reg_3, reg_4, reg_5);
  
  
  always @(posedge clockControle) begin
    
    case(estado)
        3'b000 : begin
          limpar = 0;
          habilitar = 0;
          armazena = 0;
      	  estado = estado + 3'b001;
        end
        
        3'b001 : begin
          limpar = 0;
          habilitar = 1;
          armazena = 0;
      	  estado = estado + 3'b001;
        end
        
        3'b010 : begin
          limpar = 0;
          habilitar = 0;
          armazena = 0;
      	  estado = estado + 3'b001;
        end
        
        3'b011 : begin
          limpar = 0;
          habilitar = 0;
          armazena = 1;
      	  estado = estado + 3'b001;
        end
        
        3'b100 : begin
          limpar = 0;
          habilitar = 0;
          armazena = 0;
      	  estado = estado + 3'b001;
        end
        
        3'b100 : begin
          limpar = 0;
          habilitar = 0;
          armazena = 0;
      	  estado = estado + 3'b001;
        end
      
      	3'b101 : begin
          limpar = 1;
          habilitar = 0;
          armazena = 0;
          estado = 3'b000;
        end
        default: begin
          limpar = 0;
          habilitar = 0;
          armazena = 0;
          estado = 3'b000;
        end
          
      endcase
  end
  
endmodule
