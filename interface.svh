`ifndef interface_svh
`define interface_svh
interface count;
 logic clk_in;
  logic [7:0] counter_in;
  logic nrst_in;  
  logic en_ctl_in;
  logic set_ctrl_in;
  logic up_ctrl_in;
  logic [7:0] counter_out;
  logic  ovf_out;
  modport dut(input clk_in,nrst_in,en_ctl_in,set_ctrl_in,up_ctrl_in,
       input  counter_in,
		 output  counter_out,
		 output  ovf_out);
		 endinterface 
`endif