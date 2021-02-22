module read_operation (Addr, Data, from_reg0, from_reg1, from_reg2, from_reg3, from_reg4, from_reg5, from_reg6, from_reg7); // this module makes read_operation
input [31:0] from_reg0, from_reg1, from_reg2, from_reg3, from_reg4, from_reg5, from_reg6, from_reg7; // define 32 bits input
input [2:0] Addr; // define 3 bits input Addr
output [31:0] Data; // define 32bits output Data

_8_to_1_MUX U0_8_to_1_MUX( // instance 8 to 1 mux
	.a(from_reg0),
	.b(from_reg1),
	.c(from_reg2),
	.d(from_reg3),
	.e(from_reg4),
	.f(from_reg5),
	.g(from_reg6),
	.h(from_reg7),
	.sel(Addr),
	.d_out(Data)
	);

endmodule // end of module 
