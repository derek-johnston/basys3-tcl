/////////////////////////////////////////////////////////////////////////////////////////
// top.v
// Developed By: Derek Johnston
// Last Modified: 11/14/2017
//
// This is a sample verilog file for ensuring proper operation of the test library.
// The logic design implemented here is a 2-to-4 line decoder.
//
// The design is taken from:
//  Logic and Computer Design Fundamentals (4th Edition)
//  By: M. Morris Mano and Charles R. Kime
//
/////////////////////////////////////////////////////////////////////////////////////////
module top(A0, A1, D0, D1, D2, D3);
    input A0, A1;
    output D0, D1, D2, D3;

    wire A0_n, A1_n;

    not
        g0(A0_n, A0),
        g1(A1_n, A1);

    and
        g3(D0, A0_n, A1_n),
        g4(D1, A0, A1_n),
        g5(D2, A0_n, A1),
        g6(D3, A0, A1);

endmodule