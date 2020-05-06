'include "regfile.v"

regfile  regfile1(
    .we_(wb_wreg),
    .waddr(wb_wd),
    .wdata(wb_data)
)