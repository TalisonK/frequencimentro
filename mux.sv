module mux(clk100KHZ, seletor, saida);
  
  
  input clk100KHZ;
  input bit[3:0] seletor;
  output bit saida;
  
  bit clk10KHZ, clk1KHZ, clk100HZ, clk10HZ, clk1HZ;
  bit[4:0] cont1,cont2,cont3,cont4,cont5;
  
  bit [3:0] estado;
  
  always @(posedge clk100KHZ) begin
    
    if (seletor != estado) begin
      cont1 = 4'b0000;
      cont2 = 4'b0000;
      cont3 = 4'b0000;
      cont4 = 4'b0000;
      cont5 = 4'b0000;
      
      clk10KHZ = 0;
      clk1KHZ = 0;
      clk100HZ = 0;
      clk10HZ = 0;
      clk1HZ = 0;

      estado = seletor;
    end
    else begin
      estado = estado;
    end
    case(estado)
        3'b000 : saida = clk100KHZ;
        3'b001 : saida = clk10KHZ;
        3'b010 : saida = clk1KHZ;
        3'b011 : saida = clk100HZ;
        3'b100 : saida = clk10HZ;
        3'b101 : saida = clk1HZ;
        default : saida = 0;
    endcase
    
    
  end
  
  
  always @ (posedge clk100KHZ) begin
    
    if(cont1 < 4'b1001) begin
      cont1 = cont1 + 4'b0001;
      if(cont1 == 4'b0101) begin
        clk10KHZ = 0;
      end
    end
    else begin
      cont1 = 4'b0000;
      clk10KHZ = 1;
    end
  end
  
  always @ (posedge clk10KHZ) begin
    if(cont2 < 4'b1001) begin
      cont2 = cont2 + 4'b0001;
      if(cont2 == 4'b0101) begin
        clk1KHZ = 0;
      end
    end
    else begin
      cont2 = 4'b0000;
      clk1KHZ = 1;
    end
  end
  
  always @ (posedge clk1KHZ) begin
    if(cont3 < 4'b1001) begin
      cont3 = cont3 + 4'b0001;
      if(cont3 == 4'b0101) begin
        clk100HZ = 0;
      end
    end
    else begin
      cont3 = 4'b0000;
      clk100HZ = 1;
    end
  end
  
  always @ (posedge clk100HZ) begin
    if(cont4 < 4'b1001) begin
      cont4 = cont4 + 4'b0001;
      if(cont4 == 4'b0101) begin
        clk10HZ = 0;
      end
    end
    else begin
      cont4 = 4'b0000;
      clk10HZ = 1;
    end
  end
  
  always @ (posedge clk10HZ) begin
    if(cont5 < 4'b1001) begin
      cont5 = cont5 + 4'b0001;
      if(cont5 == 4'b0101) begin
        clk1HZ = 0;
      end
    end
    else begin
      cont5 = 4'b0000;
      clk1HZ = 1;
    end
  end  
  
endmodule
