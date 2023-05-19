module mux4x1 (b0,b1,e0,e1,e2,e3,S);

	input b0,b1,e0,e1,e2,e3; // entradas
	output S; // saída do mux
	wire f0,f1,f2,f3; // fios que interligas as portas lógicas
	not(nb0,b0);
	not(nb1,b1);
	
	and (f0,e0, nb1,nb0); // combinações de seleção junto com as entradas de dados, e as informações sendo levadas pelos fios
	and (f1,e1, nb1,b0);
	and (f2,e2, b1,nb0);
	and (f3,e3, b1,b0);
	or (S, f0,f1,f2,f3);
	
endmodule 