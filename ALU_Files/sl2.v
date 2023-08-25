module mult4(a,addr);
	input[31:0] a;
	output reg[31:0] addr;
	wire nota;
	wire zero;
	not(nota,a[0]);
	and(zero,a[0],nota);
	assign addr[0]=zero;
	assign addr[1]=zero;
	for(genvar i=0;i<30;i=i+1) begin
		assign addr[i+2]=a[i];
	end
endmodule