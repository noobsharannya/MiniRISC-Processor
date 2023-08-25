module andALU(input[31:0] a,input[31:0] b,output[31:0] c);
    for(genvar i=0;i<32;i=i+1) begin
        and(c[i],a[i],b[i]);
    end
endmodule