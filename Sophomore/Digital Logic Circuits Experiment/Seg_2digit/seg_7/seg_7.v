module seg_7 (A, a, b, c, d, e, f, g, com);

input [3:0] A;
output a, b, c, d, e, f, g;
output [3:0] com;

assign a = (~A[0]&~A[2])|(~A[0]&A[2]&A[3])|(~A[1]&~A[2]&A[3])|(A[2]&A[1])|(~A[3]&A[1])|(A[0]&A[2]&~A[3]);
assign b = (~A[0]&~A[2])|(~A[2]&~A[3])|(~A[0]&~A[1]&~A[3])|(A[0]&~A[1]&A[3])|(A[0]&A[1]&~A[3]);
assign c = (~A[2]&A[3])|(A[2]&~A[3])|(~A[1]&~A[3])|(~A[1]&A[0])|(A[0]&~A[3]);  
assign d = (~A[0]&~A[1]&~A[2])|(~A[1]&A[3])|(A[0]&~A[2]&A[3])|(A[0]&~A[1]&A[2])|(A[1]&~A[2]&~A[3])|(~A[0]&A[1]&A[2]);
assign e = (~A[0]&A[1])|(A[2]&A[3])|(~A[0]&~A[2])|(A[1]&A[3]);
assign f = (~A[0]&~A[1])|(A[2]&~A[3])|(~A[2]&A[3])|(A[1]&A[3]);
assign g = (~A[2]&A[3])|(~A[1]&A[2]&~A[3])|(A[0]&A[2]&A[3])|(~A[0]&A[1]&A[2])|(A[1]&~A[2]);

assign com=4'b0001;

endmodule