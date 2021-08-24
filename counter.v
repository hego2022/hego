module counter (input clk_in,nrst_in,en_ctl_in,set_ctrl_in,up_ctrl_in,
       input [0:7]counter_in,
		 output reg [7:0]counter_out,
		 output reg ovf_out);
		 
		
		 always @(posedge clk_in ,negedge nrst_in)
		begin
                if(nrst_in==1)
                 begin
		 counter_out<=0;
		 ovf_out<=0;
		 end
		 if(en_ctl_in==1&&nrst_in==0)
		 begin
		if(up_ctrl_in==0)
                counter_out <= counter_out - 1;
                 if(up_ctrl_in==1)
                counter_out <= counter_out + 1;
		 end
	else
		 begin
		 if (set_ctrl_in==1)
       counter_out<=counter_in;
	    end
	   end
endmodule		
