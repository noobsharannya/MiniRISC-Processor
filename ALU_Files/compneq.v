module comp_notequal(input[31:0] a, output res);
    wire[30:0] temp;
    genvar i;
    for(i=0;i<31;i=i+1) begin
        or(temp[i],a[i],a[i+1]);
    end
    assign res=temp[30];
endmodule