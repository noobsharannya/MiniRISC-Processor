`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:49 09/09/2022 
// Design Name: 
// Module Name:    adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:01:59 08/26/2022 
// Design Name: 
// Module Name:    Ripple_carry_adder_16bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder_one(
	input[31:0] incnt, output[31:0] outcnt);
	wire[30:0] c;
	not(outcnt[0],incnt[0]);
	assign c[0]=incnt[0];
	for(genvar i=0;i<31;i=i+1) begin
		xor(outcnt[i+1],c[i],incnt[i+1]);
		and(c[i+1],c[i],incnt[i+1]);
	xor(outcnt[31],incnt[31],c[30]);
endmodule
