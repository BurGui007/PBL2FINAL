module divisor(clk, q,q2);

	input clk; // entrada do clock
	output q,q2; // saidas do clock de deslocamente de multiplexaçao
	wire f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20,f21,f22; //fios para interligar os flipflops e dividir as frequencias
	
	/* Sabendo que após a passagem do clock em 1 flip flop, o clock sofre um atraso, pensando nisto, utilizamos 24 flip flops
	para dividir a frequência de 50 MHz em duas saídas que serão utilizadas, a saída "q" que equivale a 97 KHz e a saída q2
	que equivale a 2 KHz */
	fft(clk,1,f1,1);//50 MHz
	fft(f1,f1,f2,1);
	fft(f2,f2,f3,1);
	fft(f3,f3,f4,1);
	fft(f4,f4,f5,1);
	fft(f5,f5,f6,1);
	fft(f6,f6,f7,1);
	fft(f7,f7,f8,1);
	fft(f8,f8,q,1); // 97KHz
	fft(q,q,f9,1);
	fft(f9,f9,f10,1);
	fft(f10,f10,f11,1);
	fft(f11,f11,f12,1);
	fft(f12,f12,f13,1);
	fft(f13,f13,f14,1);
	fft(f14,f14,f15,1);
	fft(f15,f15,f16,1);
	fft(f16,f16,f17,1);
	fft(f17,f17,f18,1);
	fft(f18,f18,f19,1);
	fft(f19,f19,f20,1);
	fft(f20,f20,f21,1);
	fft(f21,f21,f22,1);
	fft(f22,f22,q2,1); // 2 KHz
	
endmodule 