module mux8x1(b0,b1,b2,S,e0,e1,e2,e3,e4,e5,e6);

	input b0,b1,b2; // bits de seleçao do mux 
	input e0,e1,e2,e3,e4,e5,e6; // entrada de dados 
	output S; // saida
	wire f0,f1,f2,f3,f4,f5,f6; //fios que interligam a saida das portas and e levam a informaçao para porta or
	
	not(nb0, b0);// portas inversoras para os bits de seleçao
	not(nb1, b1);
	not(nb2, b2);
	
	and (f0,e0, nb0,nb1,nb2); // e0*000
	and (f1,e1, nb0,nb1, b2); // e1*001
	and (f2,e2, nb0,b1, nb2); // e2*010
	and (f3,e3, nb0,b1, b2); // e3*011
	and (f4,e4, b0,nb1, nb2); // e4*100
	and (f5,e5, b0,nb1, b2); // e5*101
	and (f6,e6, b0,b1, nb2); // e6*110
	or (S,f0,f1,f2,f3,f4,f5,f6); // essa porta "or" vai escolher uma saida por vez 

endmodule 