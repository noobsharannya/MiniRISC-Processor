module comp_equal(input[31:0] a, output res);
    wire[31:0] acomp;
    wire[30:0] temp;
    genvar i;
    for(i=0;i<32;i=i+1) begin
        not(acomp[i],a[i]);
    end
    for(i=0;i<31;i=i+1) begin
        and(temp[i],acomp[i],acomp[i+1]);
    end
    assign res=temp[30];
endmodule
