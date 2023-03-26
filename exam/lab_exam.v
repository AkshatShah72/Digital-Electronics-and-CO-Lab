/* two 4 bit nos are given
perform bitwise add/sub
display sum,carry
display diff and borrow
*/

// testbench code
module tb_AddSub;
reg A0,B0,C0,A1,B1,A2,B2,A3,B3,M;
wire S0,C1,S1,C2,S2,C3,S3,C4;

  AddSub h1(A0,B0,C0,A1,B1,A2,B2,A3,B3,M,S0,C1,S1,C2,S2,C3,S3,C4);
initial
begin

  A0=0; B0=0; C0=0; A1=0; B1=0; A2=0; B2=0; A3=0; B3=0; M=0; #1;

$display("a0 = %b, b0 = %b, c0 = %b, a1 = %b, b1 = %b, a2 = %b, b2 = %b, a3 = %b, b3 = %b,m = %b", A0, B0, C0, A1, B1, A2, B2, A3, B3, M);
$display("s0 = %b, c1 = %b, s1 = %b, c2 = %b, s2 = %b, c3 = %b, s3 = %b, c4 = %b", S0, C1,S1, C2, S2, C3, S3, C4);

A0=0; B0=0; C0=0; A1=1; B1=1; A2=1; B2=0; A3=1; B3=1; M=0; #1;
$display("a0 = %b, b0 = %b, c0 = %b, a1 = %b, b1 = %b, a2 = %b, b2 = %b, a3 = %b, b3 = %b,m = %b", A0, B0, C0, A1, B1, A2, B2, A3, B3, M);
$display("s0 = %b, c1 = %b, s1 = %b, c2 = %b, s2 = %b, c3 = %b, s3 = %b, c4 = %b", S0, C1,S1, C2, S2, C3, S3, C4);

A0=0; B0=0; C0=0; A1=1; B1=0; A2=0; B2=0; A3=0; B3=0; M=0; #1;
$display("a0 = %b, b0 = %b, c0 = %b, a1 = %b, b1 = %b, a2 = %b, b2 = %b, a3 = %b, b3 = %b,m = %b", A0, B0, C0, A1, B1, A2, B2, A3, B3, M);
$display("s0 = %b, c1 = %b, s1 = %b, c2 = %b, s2 = %b, c3 = %b, s3 = %b, c4 = %b", S0, C1,S1, C2, S2, C3, S3, C4);

A0=1; B0=0; C0=0; A1=0; B1=0; A2=0; B2=1; A3=0; B3=0; M=0; #1;
$display("a0 = %b, b0 = %b, c0 = %b, a1 = %b, b1 = %b, a2 = %b, b2 = %b, a3 = %b, b3 = %b,m = %b", A0, B0, C0, A1, B1, A2, B2, A3, B3, M);
$display("s0 = %b, c1 = %b, s1 = %b, c2 = %b, s2 = %b, c3 = %b, s3 = %b, c4 = %b", S0, C1,S1, C2, S2, C3, S3, C4);

A0=1; B0=0; C0=1; A1=1; B1=0; A2=0; B2=1; A3=0; B3=1; M=0; #1;
$display("a0 = %b, b0 = %b, c0 = %b, a1 = %b, b1 = %b, a2 = %b, b2 = %b, a3 = %b, b3 = %b,m = %b", A0, B0, C0, A1, B1, A2, B2, A3, B3, M);
$display("s0 = %b, c1 = %b, s1 = %b, c2 = %b, s2 = %b, c3 = %b, s3 = %b, c4 = %b", S0, C1,S1, C2, S2, C3, S3, C4);

A0=0; B0=0; C0=0; A1=1; B1=1; A2=0; B2=0; A3=0; B3=0; M=1; #1;
$display("a0 = %b, b0 = %b, c0 = %b, a1 = %b, b1 = %b, a2 = %b, b2 = %b, a3 = %b, b3 = %b,m = %b", A0, B0, C0, A1, B1, A2, B2, A3, B3, M);
$display("s0 = %b, c1 = %b, s1 = %b, c2 = %b, s2 = %b, c3 = %b, s3 = %b, c4 = %b", S0, C1,S1, C2, S2, C3, S3, C4);

A0=0; B0=1; C0=0; A1=1; B1=0; A2=0; B2=1; A3=0; B3=0; M=0; #1;
$display("a0 = %b, b0 = %b, c0 = %b, a1 = %b, b1 = %b, a2 = %b, b2 = %b, a3 = %b, b3 = %b,m = %b", A0, B0, C0, A1, B1, A2, B2, A3, B3, M);
$display("s0 = %b, c1 = %b, s1 = %b, c2 = %b, s2 = %b, c3 = %b, s3 = %b, c4 = %b", S0, C1,S1, C2, S2, C3, S3, C4);

A0=1; B0=1; C0=1; A1=1; B1=1; A2=1; B2=1; A3=1; B3=1; M=0; #1;
$display("a0 = %b, b0 = %b, c0 = %b, a1 = %b, b1 = %b, a2 = %b, b2 =%b, a3 = %b, b3 = %b,m= %b", A0, B0, C0, A1, B1, A2, B2, A3, B3, M);
$display("s0 = %b, c1 = %b, s1 = %b, c2 = %b, s2 = %b, c3 = %b, s3 = %b, c4 = %b", S0, C1,S1, C2, S2, C3, S3, C4);
end
initial
begin
$dumpfile("dump.vcd");
$dumpvars(1);
end
         endmodule





// design code
module FA(a, b, ci, s, c);
input a, b, ci;
output s, c;
wire x, y, z;
xor(x, a, b);
xor(s, x, ci);
and(y, a, b);
and(z, x, ci);
or(c, z, y);
endmodule
module AddSub(input a0, b0, c0, a1, b1, a2, b2, a3, b3, m, output s0, c1, s1, c2, s2, c3, s3, c4);
wire x0, x1, x2, x3;
xor(x0, m, b0);
xor(x1, m, b1);
xor(x2, m, b2);
xor(x3, m, b3);
  FA f1(.a(a0),.b(x0),.ci(c0),.s(s0),.c(c1));
  FA f2(.a(a1),.b(x1),.ci(c1),.s(s1),.c(c2));
  FA f3(.a(a2),.b(x2),.ci(c2),.s(s2),.c(c3));
  FA f4(.a(a3),.b(x3),.ci(c3),.s(s3),.c(c4));
endmodule
