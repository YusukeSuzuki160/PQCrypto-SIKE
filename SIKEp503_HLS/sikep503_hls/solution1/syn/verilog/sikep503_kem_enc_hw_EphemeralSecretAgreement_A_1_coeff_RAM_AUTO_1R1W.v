// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module sikep503_kem_enc_hw_EphemeralSecretAgreement_A_1_coeff_RAM_AUTO_1R1W (
     
    address0, ce0,
    d0, we0, 
    q0, 
     
    address1, ce1,
    
    q1, 
    
    reset, clk);

parameter DataWidth = 64;
parameter AddressWidth = 6;
parameter AddressRange = 48;
parameter COL_WIDTH = 8;
parameter NUM_COL = (DataWidth/COL_WIDTH);
 
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input[NUM_COL-1:0] we0; 
output reg[DataWidth-1:0] q0; 
 
input[AddressWidth-1:0] address1;
input ce1;

output reg[DataWidth-1:0] q1; 

input reset;
input clk;

(* ram_style = "auto"  *)reg [DataWidth-1:0] ram[0:AddressRange-1];


genvar i;

 





//read first
generate
    for (i=0;i<NUM_COL;i=i+1) begin
        always @(posedge clk) begin
            if (ce0) begin
                if (we0[i]) begin
                    ram[address0][i*COL_WIDTH +: COL_WIDTH] <= d0[i*COL_WIDTH +: COL_WIDTH]; 
                end
                q0[i*COL_WIDTH +: COL_WIDTH] <= ram[address0][i*COL_WIDTH +: COL_WIDTH]; 
            end
        end
    end
endgenerate
 
 



always @(posedge clk) begin 
    if (ce1) begin
        q1 <= ram[address1];
    end
end 

 


endmodule

