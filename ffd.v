module ffd(d,ck,q);
	
	input d,ck; // entradas  
	output reg q; /* saídas, são usadas output reg, pois quando está dentro do laço de repetição always
	ela mantém o valor antigo, até a ultima*/
	
	always @(posedge ck) begin
		q <= d; 
	end 
	
endmodule 