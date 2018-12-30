
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module toplevel(

	//////////// CLOCK //////////
	CLOCK_50,
	CLOCK2_50,
	CLOCK3_50,

	//////////// LED //////////
	LEDG,
	LEDR,

	//////////// KEY //////////
	KEY,

	//////////// SW //////////
	SW,

	//////////// SEG7 //////////
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		CLOCK_50;
input 		          		CLOCK2_50;
input 		          		CLOCK3_50;

//////////// LED //////////
output		     [8:0]		LEDG;
output		    [17:0]		LEDR;

//////////// KEY //////////
input 		     [3:0]		KEY;

//////////// SW //////////
input 		    [17:0]		SW;

//////////// SEG7 //////////
output		     [6:0]		HEX0;
output		     [6:0]		HEX1;
output		     [6:0]		HEX2;
output		     [6:0]		HEX3;
output		     [6:0]		HEX4;
output		     [6:0]		HEX5;
output		     [6:0]		HEX6;
output		     [6:0]		HEX7;

//=======================================================
//  REG/WIRE declarations
//=======================================================
assign HEX7 = 7'b1111111;
assign HEX6 = 7'b1111111;
assign HEX5 = 7'b1111111;
assign HEX4 = ~7'b0111110;
assign HEX3 = ~7'b0000110;
assign HEX2 = ~7'b1101101;
assign HEX1 = ~7'b0000110;
assign HEX0 = ~7'b0111111;

reg [15:0] w0, w1, w2, w3, w4, w5, w6, w7, w8;
reg [15:0] i0, i1, i2, i3, i4, i5, i6, i7, i8;
reg [15:0] holder0, holder1, holder2;
wire [15:0] pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7, pp8;
wire [15:0] out0, out1, out2, out3, out4, out5, out6;

bfloat16_mult mtest0(.clk(CLOCK_50), .a(w0), .b(i0), .out(pp0));
bfloat16_mult mtest1(.clk(CLOCK_50), .a(w1), .b(i1), .out(pp1));
bfloat16_mult mtest2(.clk(CLOCK_50), .a(w2), .b(i2), .out(pp2));
bfloat16_mult mtest3(.clk(CLOCK_50), .a(w3), .b(i3), .out(pp3));
bfloat16_mult mtest4(.clk(CLOCK_50), .a(w4), .b(i4), .out(pp4));
bfloat16_mult mtest5(.clk(CLOCK_50), .a(w5), .b(i5), .out(pp5));
bfloat16_mult mtest6(.clk(CLOCK_50), .a(w6), .b(i6), .out(pp6));
bfloat16_mult mtest7(.clk(CLOCK_50), .a(w7), .b(i7), .out(pp7));
bfloat16_mult mtest8(.clk(CLOCK_50), .a(w8), .b(i8), .out(pp8));

bfloat16_adder atest0(.clk(CLOCK_50), .a(pp0), .b(pp1), .out(out0));
bfloat16_adder atest1(.clk(CLOCK_50), .a(pp2), .b(pp3), .out(out1));
bfloat16_adder atest2(.clk(CLOCK_50), .a(pp4), .b(pp5), .out(out2));
bfloat16_adder atest3(.clk(CLOCK_50), .a(pp6), .b(pp7), .out(out3));
bfloat16_adder atest4(.clk(CLOCK_50), .a(out0), .b(out1), .out(out4));
bfloat16_adder atest5(.clk(CLOCK_50), .a(out2), .b(out3), .out(out5));
bfloat16_adder atest6(.clk(CLOCK_50), .a(out4), .b(out5), .out(out6));
bfloat16_adder atest7(.clk(CLOCK_50), .a(out6), .b(holder2), .out(LEDR[15:0]));

always @(posedge CLOCK_50) begin
	holder0 <= pp6;
	holder1 <= holder0;
	holder2 <= holder1;
end

//=======================================================
//  Structural coding
//=======================================================

endmodule