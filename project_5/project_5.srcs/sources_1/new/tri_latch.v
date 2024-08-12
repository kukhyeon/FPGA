/*
This module is a tri-state latch named tri_latch. It has two outputs (qout, qbout) and three inputs (clock, data, enable). The main functionalities of this circuit are as follows:

Data Inversion: The data signal is inverted through a NOT gate (n1).

NAND Gates: Two NAND gates (n2, n3) use the data and ndata (inverted data) along with the clock signal to generate wa and wb signals, respectively.

Latch Operation: Two NAND gates (n4, n5) use the wa and wb signals to set the states of the latch (q, qb). These states change according to the clock signal.

Tri-State Buffers: The bufif gates (q_drive, qb_drive) pass the q and qb values to qout and qbout respectively, only when the enable signal is active. When the enable signal is inactive, the outputs are in a high-impedance state.

This circuit latches the data based on the clock signal and activates or puts the output in a high-impedance state based on the enable signal.
*/
module tri_latch(qout, qbout, clock, data, enable);
    output qout, qbout;
    input clock, data, enable;
    tri qout, qbout;

    not #5          n1(ndata, data);
    nand #(3, 5)    n2(wa, data, clock), n3(wb, ndata, clock); // rise and fall delays
    nand #(12, 15)  n4(q, qb, wa), n5(qb, q, wb);              // rise and fall delays
    bufif #(3, 7, 13) q_drive(qout, q, enable);                // rise, fall, turn-off delays
                      qb_drive(qbout, qb, enable); 
endmodule
