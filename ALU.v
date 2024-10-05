`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 05:58:18 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU( 
    input [31:0] A, // 32-bit input for A
    input [31:0] B, // 32-bit input for B
    input [2:0] ALUOp,  // 3-bit control input
    output reg [31:0] Result    // 32-bit outputv
);

always @(*) begin
    case (ALUOp)
        3'b000: Result = A & B; // AND operation
        3'b001: Result = A | B; // OR operation
        3'b010: Result = A + B; // ADD operation
        3'b110: Result = A - B; // SUBTRACT operation
        3'b111: Result = (A < B) ? 1 : 0;   // SLT (Set Less Than)
        default: Result = 32'b0; // Set Result to all 0's (32-bits)
        endcase
        end
        
        endmodule

   
