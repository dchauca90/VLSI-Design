`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 06:05:01 PM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;

reg [31:0] A;   // 32-bit input A to the ALU
reg [31:0] B;   // 32-bit input B to the ALU
reg [2:0] ALUOp;    // 3-bit control input to the SELECT the ALU operation

wire [31:0] Result; // 32-bit output result from the ALU


ALU myALU(
    .A(A),  // Connect the A input to the ALU
    .B(B),  // Connect the B input to the ALU
    .ALUOp(ALUOp),  // Connect the ALUOp control signal to the ALU
    .Result(Result) // Output Result from the ALU
    );

initial begin 
    // Monitor statement to print the values of A, B, ALUOp, and Result whenever they change
    //$monitor("Test data: A = %d, B = %d, ALUOp = %b, Result = %d",A, B, ALUOp, Result);
    
    // First test case: AND operation (ALUOp = 000)
    A = 32'd1; B = 32'd2; ALUOp = 3'b000;
    #5;
     $display("1st Test data: input A is %d, input B is %d, ALUOp is %b, result is %d", A, B, ALUOp, Result);  // Wait for 10 time units
    
    // Second test case: OR operation (ALUOp = 001)
    A = 32'd1; B = 32'd2; ALUOp = 3'b001;
    #5;
     $display("2nd Test data: input A is %d, input B is %d, ALUOp is %b, result is %d", A, B, ALUOp, Result);
    
    // Third test case: ADD operation (ALUOp = 010)
    A = 32'd1; B = 32'd2; ALUOp = 3'b010;
   #5  
   $display("3rd Test data: input A is %d, input B is %d, ALUOp is %b, result is %d", A, B, ALUOp, Result);
    
    // Fourth test case: SUBTRACT operation (ALUOp = 110)
    A = 32'd3; B = 32'd4; ALUOp = 3'b110;
    #5; 
    $display("4th Test data: input A is %d, input B is %d, ALUOp is %b, result is %d", A, B, ALUOp, $signed(Result));
    
    // Fifth test case: SLT (Set Less Than) operation (ALUOp = 111)
    A = 32'd3; B = 32'd4; ALUOp = 3'b111;
    #5
    $display("5th Test data: input A is %d, input B is %d, ALUOp is %b, result is %d", A, B, ALUOp, Result);
    
    // Sixth test Case: SLT operation with A > B (ALUOp = 111)
    A = 32'd5; B = 32'd2; ALUOp = 3'b111;
    #5;
    $display("6th Test data: input A is %d, input B is %d, ALUOp is %b, result is %d", A, B, ALUOp, Result);
    
    $finish;
    end
   
endmodule
