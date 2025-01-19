
module testXorGate;
	reg a,b;
	wire y;
	//unit under test = uut
	xorGate uut(a,b,y);
	initial
		begin
		$dumpfile("wave.vcd");
		$dumpvars(0,testXorGate);
		$display("Xor Gate");
		$display("a  b  y");
		$monitor("a = %b, b = %b, y = %b",a,b,y);
	
		a=0;b=0;
		#10;
//		$display("%b  %b  %b",a,b,y);

		a=1;b=0;
		#10;
//		$display("%b  %b  %b",a,b,y);

		a=1;b=1;
		#10;
//		$display("%b  %b  %b",a,b,y);
		$finish;
		end
	endmodule 

