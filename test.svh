`include "uvm_macros.svh"
import uvm_pkg::*;
`include "env.svh"
`include "interface.svh"
`ifndef test_svh
`define test_svh
class test extends uvm_test ;
`uvm_component_utils(test);
function new(string name , uvm_component parent);
super.new(name,parent);
endfunction
virtual interface count c;
env en_H ;
function void build_phase(uvm_phase phase);
if(!uvm_config_db#(virtual count)::get(null,"*","c",c))
$fatal("failed to get c");
en_H=env::type_id::create("en_H",this);
endfunction:build_phase
task run_phase(uvm_phase phase);
randomize();
repeat(20);
#100
randomize;
endtask 
endclass 
`endif
