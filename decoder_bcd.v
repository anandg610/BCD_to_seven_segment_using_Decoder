module decoder_bcd(a, b, c,d, y0, y1, y2,y3, y4, y5, y6,y7,y8,y9); 
input a,b, c,d;
output y0, y1, y2, y3, y4, y5, y6, y7,y8,y9;
wire anot, bnot, cnot,dnot;
assign dnot=~d;
assign anot =~a;
assign bnot=~b;
assign cnot=~c;
and a0 (y0, dnot,anot, bnot,cnot);
and a1(y1,dnot, anot, bnot, c);
and a2(y2,dnot, anot, b, cnot);
and a3(y3,dnot, anot, b,c);
and a4(y4, dnot,a, bnot, cnot);
and a5(y5, dnot,a, bnot, c);
and a6(y6, dnot,a, b, cnot);
and a7(y7, dnot,a,b, c);
and a8(y8,d,anot,bnot,cnot);
and a9(y9,d,anot,bnot,c);
endmodule 
