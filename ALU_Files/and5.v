module and_five(input a,input b,input c,input d,input e,output res);
    wire ab,abc,abcd;
    and(ab,a,b);
    and(abc,ab,c);
    and(abcd,abc,d);
    and(res,abcd,e);
endmodule