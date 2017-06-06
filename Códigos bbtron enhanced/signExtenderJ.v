module signExtenderJ (inputB, extenderOutputB);
    input [25:0] inputB;  //Extensão de entradas de 21 bits.
    output reg [31:0] extenderOutputB;

    always @ ( * ) begin //Multiplexador usado para avaliar que tipo de extensão o "signExtender" deve fazer.
    //Caso a seleção seja "01" ele completa uma entrada de 25 bits. Instrucao j.
      extenderOutput = inputB;
      if(inputB[11] == 1'b1) begin
        extenderOutput = {11'h0000, inputB};
        end
      else begin
        extenderOutput = 32'b1;
        end
endmodule // signExtenderJ
