module door_contr(
  input wire clk,
  input wire rst,
  input wire sensor,        //to detect the presence of a person
  input wire timeout,
  output reg door_motor
);
  parameter closed = 2'b00, opening = 2'b01, open=2'b10, closing=2'b11;
  reg [1:0] pr_st,nx_st;
  always@(posedge clk or posedge rst) begin
    if(rst)
      pr_st<=closed;
    else
      pr_st<=nx_st;
  end
  always@(*) begin
    door_motor=0;
    nx_st=pr_st;
    case(pr_st)
      closed: begin
        if(sensor)begin
          nx_st=opening;
          door_motor=1;
      end
      end
      opening: begin
        nx_st=open;
        door_motor=1;
      end
      open: begin
        if(timeout) begin
          nx_st=closing;
          door_motor=1;
        end
      end
     closing: begin
       if(!sensor) begin
         nx_st=closed;
         door_motor=1;
       end
         else begin
           nx_st=opening;
         end
     end
        default: begin
          nx_st=closed;
        end
        endcase
      end
      endmodule
        
