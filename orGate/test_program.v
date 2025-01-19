module testOrGate;
	reg a,b;
	wire y;
	orGate uut(a,b,y);
	initial begin
	$dumpfile("wave.vcd");
	$dumpvars(0,testOrGate);
	a=0;b=0;
	#10;
	$display("a = %b , b = %b , y = %b ",a,b,y);
	a=1;b=0;
	#10;
	$display("a=%b,b=%b,y=%b",a,b,y);
	a=1;b=1;
	#10;
	$display("a=%b,b=%b,y=%b",a,b,y);
	$finish;
  	end
endmodule	

