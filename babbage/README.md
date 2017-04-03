# Babbage difference engine emulation circuit
The Babbage difference engine is a mechanical digital computation device designed to tabulate a polynomial function. It was proposed by Charles Babbage, an English mathematician, in the nineteenth century. The engine is based on Newton's method of differences and avoids the need for multiplication. For example, consider a second-order polynomial f(n) = 2n^2 + 3n + 5. We can find the difference between f(n) and f(n - 1):

f(n) - f(n - 1) = 4n + 1

Assume that n is a 6-bit input and interpreted as an unsigned integer. Design this circuit using the RT methodology:

1. Derive the ASMD chart.2. Derive the HDL code based on the ASMD chart.3. Derive a testbench and use simulation to verify operation of the code.4. Synthesize the circuit, program the FPGA, and verify its operation.