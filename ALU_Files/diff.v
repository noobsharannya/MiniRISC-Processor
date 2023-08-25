module complex(input[31:0] a,input[31:0] b,output[31:0] res);
    wire[31:0] c;
    wire[31:0] cnot;
    wire[31:0] d;
    wire[31:0] out;
    wire temp;
    xorALU(a,b,c);
    genvar i;
    genvar j;
    for(i=0;i<32;i=i+1) begin
        not(cnot[i],c[i]);
    end
    and(temp,c[0],cnot[0]);
    assign d[0]=cnot[0];
    assign out[0]=c[0];
    for(i=1;i<32;i=i+1) begin
        and(out[i],d[i-1],c[i]);
        and(d[i],d[i-1],cnot[i]);
    end
    for(i=6;i<31;i=i+1) begin
        assign res[i]=temp;
    end
    assign res[0]=out[0]|out[2]|out[4]|out[6]|out[8]|out[10]|out[12]|out[14]|out[16]|out[18]|
        out[20]|out[22]|out[24]|out[26]|out[28]|out[30];
    assign res[1]=out[1]|out[2]|out[5]|out[6]|out[9]|out[10]|out[13]|out[14]|out[17]|out[18]|
        out[19]|out[21]|out[22]|out[25]|out[26]|out[29]|out[30];
    assign res[2]=out[3]|out[4]|out[5]|out[6]|out[11]|out[12]|out[13]|out[14]|out[19]|out[20]|
        out[21]|out[22]|out[27]|out[28]|out[29]|out[30];
    assign res[3]=out[7]|out[8]|out[9]|out[10]|out[11]|out[12]|out[13]|out[14]|out[23]|out[24]|
        out[25]|out[26]|out[27]|out[28]|out[29]|out[30];
    assign res[4]=out[15]|out[16]|out[17]|out[18]|out[19]|out[20]|out[21]|out[22]|out[23]|
        out[24]|out[25]|out[26]|out[27]|out[28]|out[29]|out[30];
    assign res[5]=out[31];
endmodule