module complement(input[31:0] a,output[31:0] acomp);
    wire[31:0] c;
    for(genvar i=0;i<32;i=i+1) begin
        not(c[i],a[i]);
    adder_one(c,acomp);
endmodule