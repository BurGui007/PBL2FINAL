module contador (clk, q1,q2,q3);
	
	input clk; //entradas 
	output q1,q2,q3; // saídas
	wire f1,f2; // fios
	
	not(nq1,q1); // porta inversora
	
	nand(f2,q2,q3,nq1); // lógica para que o contador não chegue até a combinação 111
	and(f1,q1,q2); // logíca para contagem, de acordo com a tabela da verdade
	
	fft ff1 (clk,1,q1,f2);
	fft ff2 (clk,q1,q2,f2);
	fft ff3 (clk,f1,q3,f2);
	
	
endmodule 