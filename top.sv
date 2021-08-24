`include "uvm_macros.svh"
`include "env.svh"
`include "interface.svh"
`include "test.svh"
`include "package.svh"
import uvm_pkg::*;
module top;
virtual interface count c;
counter k(.c(c.dut));
initial
begin
uvm_config_db#(virtual count)::set(null,"*","c",c);
tesr.run_phase();
end
endmodule
