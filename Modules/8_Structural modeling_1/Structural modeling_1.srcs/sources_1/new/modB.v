// Port mapping practice
module modB(
    wa, wb, c, d
    );
    inout wa, wb;
    input c, d;

    tranif1     g1(wa, wb, cinvert);
    not #(2, 6) n1(cinvert, int);
    and #(6, 5) g2(int, c, d);
endmodule
