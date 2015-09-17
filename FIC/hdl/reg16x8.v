// reg16x8.v
`timescale  1 ns /  1 ps

module reg16x8( clk, nreset, wr_en, rd_en, addr, data_in, data_out); 
  
  
//Inputs Declarations 
input  clk;             //Clock
input  nreset;          //active low reset  
input  wr_en;           //Write Enable 
input  rd_en;           //Read Enable 
input  [3:0] addr;      //Address Width 
input  [7:0] data_in;   //Data Input 
  
//output Declarations 
output [7:0] data_out;  //Data Output

reg [7:0] temp_data; //hold data to add delay
  
//reg Declarations 
reg [7:0] mem [15:0];    //Memory 
reg [7:0] data_out;     //Data Output 


//Generation Writing data into memory 
always @(posedge clk, negedge nreset) 
    begin : WRITE_GEN 
        if(nreset == 1'b0)
            begin
                mem[addr] <= 8'h00;
            end
        else if(wr_en)
            begin  
               	mem[addr] <= data_in;
            end
  	 
end
  
//Generation of data_out 
always @(posedge clk, negedge nreset) 
    begin : READ_GEN 
        if(nreset == 1'b0)
            begin
                temp_data <= 8'h00;
            end
        else if(rd_en)
            begin  
                temp_data <= mem[addr]; 
end           end 

always @(posedge clk) 
begin
    data_out <= temp_data; 	 
end
  
endmodule