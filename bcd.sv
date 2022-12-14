module bcd(habilitar, limpar, amostra, display1, display2, display3, display4, display5);
  
  input habilitar;
  input limpar;
  input amostra;

  output bit[4:0] display1;
  output bit[4:0] display2;
  output bit[4:0] display3;
  output bit[4:0] display4;
  output bit[4:0] display5;
  
  bit clk_1,clk_2,clk_3,clk_4,clk_5;
  
  always @(posedge amostra or posedge limpar) begin
    if (limpar) begin
      display1 = 4'b0000;
      display2 = 4'b0000;
      display3 = 4'b0000;
      display4 = 4'b0000;
      display5 = 4'b0000;
      
    end
    else if(habilitar) begin
      if (display1 <= 4'b1000) begin
    	display1++;
        clk_1 = 0;
      end
      else begin
        display1 = 4'b0000;
        clk_1 = 1;
      end
    end
    else begin
      display1 = display1;
    end
  end
  
  always @(posedge clk_1) begin
    if(habilitar) begin
      if (display2 <= 4'b1000) begin
    	display2++;
        clk_2 = 0;
      end
      else begin
        display2 = 4'b0000;
        clk_2 = 1;
      end
    end
    else begin
      display2 = display2;
    end
  end
  
    
  always @(posedge clk_2) begin
    if(habilitar) begin
      if (display3 <= 4'b1000) begin
    	display3++;
        clk_3 = 0;
      end
      else begin
        display3 = 4'b0000;
        clk_3 = 1;
      end
    end
    else begin
      display3 = display3;
    end
  end
  
  always @(posedge clk_3) begin
    if(habilitar) begin
      if (display4 <= 4'b1000) begin
    	display4++;
        clk_4 = 0;
      end
      else begin
        display4 = 4'b0000;
        clk_4 = 1;
      end
    end
    else begin
      display4 = display4;
    end
  end
  
  always @(posedge clk_4) begin
    if(habilitar) begin
      if (display5 <= 4'b1000) begin
    	display5++;
        clk_5 = 0;
      end
      else begin
        display5 = 4'b0000;
        clk_5 = 1;
      end
    end
    else begin
      display5 = display5;
    end
  end
  
endmodule
