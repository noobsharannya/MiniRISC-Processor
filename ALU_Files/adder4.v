module adder4(a,c);
	input [31:0] a;
	output reg[31:0] c;
	assign c[0]=a[0];
	assign c[1]=a[1];
	not(c[2],a[2]);
	wire[29:0] carry;
	assign carry[0]= a[2];
	for(genvar i=1;i<30;i=i+1) begin
		xor(c[i+2],a[i+2],carry[i-1]);
		and(carry[i],c[i+2],a[i+2]);
	end
endmodule