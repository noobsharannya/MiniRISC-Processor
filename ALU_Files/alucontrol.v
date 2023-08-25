module ALU_control(input[3:0] aluop,input[3:0] func,output addctrl,output compctrl,
                output sllvctrl,output srlvctrl,output sravctrl,output andctrl,output xorctrl,
                output diffctrl,output compeqctrl,output complessctrl,output compneqctrl,
                output memaddctrl);
    wire n0,n1,n2,n3,b01;
    not(n0,func[0]);
    not(n1,func[1]);
    not(n2,func[2]);
    not(n3,func[3]);
    or(b01,aluop[0],aluop[1]);
    and_five(b01,n0,n1,n2,n3,addctrl);
    and_five(b01,n3,n2,n1,func[0],compctrl);
    and_five(b01,n3,n2,func[1],n0,sllvctrl);
    and_five(b01,n3,n2,func[1],func[0],srlvctrl);
    and_five(b01,n3,func[2],n1,n0,sravctrl);
    and_five(aluop[0],n3,func[2],n1,func[0],andctrl);
    and_five(aluop[0],n3,func[2],func[1],n0,xorctrl);
    and_five(aluop[0],n3,func[2],func[1],func[0],diffctrl);
    and_five(aluop[3],n3,n2,n1,func[0],compeqctrl);
    and_five(aluop[3],n3,n2,func[1],n0,compneqctrl);
    and_five(aluop[3],n3,n2,n1,n0,complessctrl);
    assign memaddctrl=aluop[2];
endmodule