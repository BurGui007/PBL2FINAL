module reguniversal (clk, b0,b1,q9,q10,q11,q12,q13,q14,q15,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15);
	
	input clk, b0,b1,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15; //Entradas
	wire S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,q0,q1,q2,q3,q4,q5,q6,q7,q8; // fios para ligar os blocos de mux e flipflop
	output q9,q10,q11,q12,q13,q14,q15; // saidas
	/*Aqui a gente chama um mux para cada flipflop, usamos 16 bits, entao os chamamos 16 vezes, eles tem a funçao de decidir para qual lado os
	bits serao movimentados, caso as chaves sejam 00 os bits serao setados nos flipflops pela entrada "e0" do mux e nao serao mudados ou trocados, 
	a nao ser que seja selecionadoas chaves 01, e ai os bits serao comutados da direita para esquerda, ou seja, a saida do flipflop 15  sera
	a entrada do mux 0, a saida do mux 0, sera a entrada do flipflop 0 e a saida do flipflop 0 sera a entrada do mux 1 e assim sucessivamente,
	quando a entrada 10 for selecionada os bits sera comutados da esquerda para a direita, ou seja, a saida do flipflop 15 sera a entrada do mux 14
	a saida do flipflop 14 sera a entrada do mux 13 e assim sucessivamente, a entrada do mux 15 sera a saida do flipflop 0, para que se mantenha
	o looping, ja a chave 11, a entrada do mux 15 e a saida do flipflop 15, ou seja o bits vai se manter no mesmo lugar*/
							//e0  e1  e2  e3 
	mux4x1 MUX0 (b0,b1,d15, q15,q1, q0,S0);
	mux4x1 MUX1 (b0,b1,d14, q0, q2, q1,S1);
	mux4x1 MUX2 (b0,b1,d13, q1, q3, q2,S2);
	mux4x1 MUX3 (b0,b1,d12, q2, q4, q3,S3);
	mux4x1 MUX4 (b0,b1,d11, q3, q5, q4,S4);
	mux4x1 MUX5 (b0,b1,d10, q4, q6, q5,S5);
	mux4x1 MUX6 (b0,b1,d9,  q5, q7, q6,S6);
	mux4x1 MUX7 (b0,b1,d8,  q6, q8, q7,S7);
	mux4x1 MUX8 (b0,b1,d7,  q7, q9, q8,S8);
	mux4x1 MUX9 (b0,b1,d6,  q8, q10,q9,S9);
	mux4x1 MUX10 (b0,b1,d5, q9, q11,q10,S10);
	mux4x1 MUX11 (b0,b1,d4, q10,q12,q11,S11);
	mux4x1 MUX12 (b0,b1,d3, q11,q13,q12,S12);
	mux4x1 MUX13 (b0,b1,d2, q12,q14,q13,S13);
	mux4x1 MUX14 (b0,b1,d1, q13,q15,q14,S14);
	mux4x1 MUX15 (b0,b1,d0, q14,q0, q15,S15);

	
	ffd FF0 (S0,clk,q0);
	ffd FF1 (S1,clk,q1);
	ffd FF2 (S2,clk,q2);
	ffd FF3 (S3,clk,q3);
	ffd FF4 (S4,clk,q4);
	ffd FF5 (S5,clk,q5);
	ffd FF6 (S6,clk,q6);
	ffd FF7 (S7,clk,q7);
	ffd FF8 (S8,clk,q8);
	ffd FF9 (S9,clk,q9);
	ffd FF10 (S10,clk,q10);
	ffd FF11 (S11,clk,q11);
	ffd FF12 (S12,clk,q12);
	ffd FF13 (S13,clk,q13);
	ffd FF14 (S14,clk,q14);
	ffd FF15 (S15,clk,q15);


	
endmodule 