'define RstEnable           1'b1
'define RstDisable          1'b0
'define ZeroWord            32'h00000000
'define WriteEnable         1'b1
'define WriteDisable        1'b0
'define ReadEnable          1'b1
'define ReadDisable         1'b0
'define AluOpBus            7:0
'define AuSelBus            2:0
'define InstValid           1'b0
'define InstInvalid         1'b1
'define True_V              1'b1
'define False_V             1'b0
'define ChipEnable          1'b1
'define ChipDisable         1'b0


'define EXE_ORI             6'b001101
'define EXE_NOP             6'b000000


'define EXE_OR_OP           8'b00100101
'define EXE_NOP_OP          8'b00000000

'define EXE_RES_LOGIC       3'b001

'define EXE_AND         6'b100100
'define EXE_OR         6'b100101
'define EXE_XOR         6'b100110
'define EXE_XOR         6'b100111
'define EXE_ANDI         6'b001100
'define EXE_ORI         6'b001101
'define EXE_XORI         6'b001110
'define EXE_LUI         6'b001111


'define EXE_SLL         6'b000000
'define EXE_SLLV         6'b000100
'define EXE_SRL         6'b000010
'define EXE_SRLV         6'b000110
'define EXE_SRA         6'b000011
'define EXE_SRAV         6'b000111

'define EXE_SYNC        6'b001111
'define EXE_PREF         6'b110011
'define EXE_SPECIAL_INST         6'b000000
'define EXE_REGIMM_INST         6'b000001
'define EXE_SPECIAL2_INST       6'b011100

'define EXE_MOVZ        6'b001010
'define EXE_MOVN        6'b001011
'define EXE_MFHI        6'b010000
'define EXE_MTHI        6'b010001
'define EXE_MFLO        6'b010010
'define EXE_MTLO        6'b010011

'define EXE_SLT         6'b101010
'define EXE_SLTU         6'b101011
'define EXE_SLTI         6'b001010
'define EXE_SLTIU         6'b001011
'define EXE_ADD         6'b100000
'define EXE_ADDU         6'b100001
'define EXE_SUB         6'b100010
'define EXE_SUBU         6'b100011

'define EXE_ADDI        6'b001000
'define EXE_ADDIU       6'b001001
'define EXE_CLZ         6'b100000
'define EXE_CLO         6'b000010


'define InstAddrBus         31:0
'define InstBus             31:0

'define InstMemNum          131071
'define InstMemNumLog2      17


'define RegAddrBus          4:0
'define RegBus              31:0
'define RegWidth            32
'define DoubleRegWidth      64
'define DoubleRegBus        63:0
'define RegNum              32
'define RegNumLog2          5
'define NOPRegAddr          5'b00000
