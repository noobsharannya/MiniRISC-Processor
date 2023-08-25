module operation_selector(input[31:0] addout,input[31:0] compout,input[31:0] sllout,
                        input[31:0] srlout,input[31:0] sraout,input[31:0] andout,
                        input[31:0] xorout,input[31:0] diffout,input compeqout,
                        input compneqout,input complessout,input addctrl,input memaddctrl,
                        input compctrl,input sllvctrl,input srlvctrl,input sravctrl,
                        input andctrl,input xorctrl,input diffctrl,input compeqctrl,
                        input compneqctrl,input complessctrl,output[31:0] result,output compeq,
                        output compneq,output compless);
    wire temp;
    or(temp,addctrl,memaddctrl);
    genvar i;
    for(i=0;i<31;i=i+1) begin
        assign result[i]=(temp & addout[i])|(compctrl & compout[i])|(sllvctrl & sllout[i])|
                        (srlvctrl & srlout[i])|(sravctrl & sraout[i])|(andctrl & andout[i])|
                        (xorctrl & xorout[i])|(diffctrl & diffout[i]);
    end
    and(compeq,compeqout,compeqctrl);
    and(compneq,compneqout,compneqctrl);
    and(compless,complessout,complessctrl);
endmodule