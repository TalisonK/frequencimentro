module registrador_modulo(armazena, limpar, display1, display2, display3, display4, display5, out1, out2, out3, out4, out5);
  
  input armazena;
  input limpar;
  
  input bit[4:0] display1;
  input bit[4:0] display2;
  input bit[4:0] display3;
  input bit[4:0] display4;
  input bit[4:0] display5;
  
  output bit[4:0] out1;
  output bit[4:0] out2;
  output bit[4:0] out3;
  output bit[4:0] out4;
  output bit[4:0] out5;
  
  always @ (posedge limpar) begin
      out1 = 4'b0000;
      out2 = 4'b0000;
      out3 = 4'b0000;
      out4 = 4'b0000;
      out5 = 4'b0000;
  end
  
  always @(posedge armazena) begin
      out1 = display1;
      out2 = display2;
      out3 = display3;
      out4 = display4;
      out5 = display5;
  end
  
  
  
endmodule