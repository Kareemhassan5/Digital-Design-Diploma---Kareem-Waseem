module Mux3x1_tb ();
reg D0,D1,D2,S0,S1;
wire Y_excpected,Y;

Mux3x1_dataflow DUT_Golden(D0,D1,D2,S0,S1,Y_excpected);
Mux3x1_behavioral DUT(D0,D1,D2,S0,S1,Y);

integer i;
initial begin
 for (i=0; i<100; i=i+1) begin
  D0= $random; D1= $random; D2= $random; S0= $random; S1= $random;
  #10;
  if(Y!=Y_excpected) begin
   $display("Error!");
   $stop;    
  end
 end
$stop;
end

initial begin
$monitor("D0=%b, D1=%b ,D2=%b, S0=%b, S1=%b, Y_excpected=%b, Y=%b", D0,D1,D2,S0,S1,Y_excpected,Y);
end
endmodule