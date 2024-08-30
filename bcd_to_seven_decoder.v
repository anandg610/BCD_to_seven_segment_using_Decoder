module bcd_to_seven_decoder(w,x,y,z,a,b,c,d,e,f,g);
input w,x,y,z;
output a,b,c,d,e,f,g;
wire y0,y1, y2, y3, y4,y5,y6,y7,y8,y9;
decoder_bcd d1( .a(x),.b(y) ,.c(z),.d(w),.y0(y0),.y1(y1),. y2(y2), .y3(y3),
.y4(y4),.y5(y5),.y6(y6),.y7(y7),.y8(y8),.y9(y9));
or or1(a,y0,y2,y3,y5,y6,y7,y8,y9);
or or2(b,y0,y1,y2,y3,y4,y7,y8,y9);
or or3(c,y0,y1,y3,y4,y5,y6,y7,y8,y9);
or or4(d,y0,y2,y3,y6,y8,y9);
or or5(e,y0,y2,y5,y6,y8);
or or6(f,y0,y4,y5,y6,y8,y9);
or or7(g,y2,y3,y4,y5,y6,y8,y9);
endmodule
