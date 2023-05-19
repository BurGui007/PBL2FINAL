module demux(En,b0,b1,b2,e0,e1,e2,e3,e4,e5,e6);

	input b0,b1,b2,En; // entradas
	output e0,e1,e2,e3,e4,e5,e6; //saídas 
	not(nb0,b0);
	not(nb1,b1); // Portas inversoras
	not(nb2,b2);
	//combinações que encaminham para saída desejada, e uma entrada de enable, 	
	nand (e0, nb0, nb1, nb2,En);
	nand (e1, nb0, nb1, b2,En);
	nand (e2, nb0, b1, nb2,En);
	nand (e3, nb0, b1, b2,En);
	nand (e4, b0, nb1, nb2,En);
	nand (e5, b0, nb1, b2,En);
	nand (e6, b0, b1, nb2,En);

endmodule 