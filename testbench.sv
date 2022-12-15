module main;
  
  bit clk;
  bit amostra;
  bit[3:0] seletor;
  
  controlador(clk, amostra, seletor);
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars;
    
    clk = 0;
    amostra = 0;
    
    //seletor = 3'b001; //100KHZ
    seletor = 3'b010; //10KHZ
    //seletor = 3'b011; //1KHZ
    //seletor = 3'b100; //100HZ
    //seletor = 3'b101; //10Hz
    //seletor = 3'b110; //1HZ
    
    #100000000 $finish;
    
  end
  
  always #9999 clk = ~clk;
  
  //always #10000 amostra = ~amostra; //200KHZ
  always #50000 amostra = ~amostra; //20KHZ
  //always #26316 amostra = ~amostra; //38KHZ
  //always #250000 amostra = ~amostra;//04KHZ
  //always #2500000 amostra = ~amostra; //400HZ
endmodule: main;
