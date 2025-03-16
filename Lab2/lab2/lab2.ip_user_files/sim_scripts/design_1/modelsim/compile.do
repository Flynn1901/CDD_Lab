vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../bd/design_1/ip/design_1_uart_top_0_0/sim/design_1_uart_top_0_0.v" \
"../../../bd/design_1/ip/design_1_Debounce_Switch_0_0/sim/design_1_Debounce_Switch_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

