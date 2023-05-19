module fft (clk,t,q,reset);
	
	input clk, t,reset; //
	output reg q;
	
	always @ (posedge clk) begin 
	 if (!reset)  
      q <= 0;  
    else
		if(t)
			q<= ~q;
		else 
			q <= q;
	end
endmodule 
