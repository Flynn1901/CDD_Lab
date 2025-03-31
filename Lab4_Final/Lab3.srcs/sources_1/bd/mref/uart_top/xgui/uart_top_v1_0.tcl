# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BAUD_RATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NBYTES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OPERAND_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDER_WIDTH { PARAM_VALUE.ADDER_WIDTH } {
	# Procedure called to update ADDER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDER_WIDTH { PARAM_VALUE.ADDER_WIDTH } {
	# Procedure called to validate ADDER_WIDTH
	return true
}

proc update_PARAM_VALUE.BAUD_RATE { PARAM_VALUE.BAUD_RATE } {
	# Procedure called to update BAUD_RATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BAUD_RATE { PARAM_VALUE.BAUD_RATE } {
	# Procedure called to validate BAUD_RATE
	return true
}

proc update_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to update CLK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to validate CLK_FREQ
	return true
}

proc update_PARAM_VALUE.NBYTES { PARAM_VALUE.NBYTES } {
	# Procedure called to update NBYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NBYTES { PARAM_VALUE.NBYTES } {
	# Procedure called to validate NBYTES
	return true
}

proc update_PARAM_VALUE.OPERAND_WIDTH { PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to update OPERAND_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OPERAND_WIDTH { PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to validate OPERAND_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.OPERAND_WIDTH { MODELPARAM_VALUE.OPERAND_WIDTH PARAM_VALUE.OPERAND_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OPERAND_WIDTH}] ${MODELPARAM_VALUE.OPERAND_WIDTH}
}

proc update_MODELPARAM_VALUE.ADDER_WIDTH { MODELPARAM_VALUE.ADDER_WIDTH PARAM_VALUE.ADDER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDER_WIDTH}] ${MODELPARAM_VALUE.ADDER_WIDTH}
}

proc update_MODELPARAM_VALUE.NBYTES { MODELPARAM_VALUE.NBYTES PARAM_VALUE.NBYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NBYTES}] ${MODELPARAM_VALUE.NBYTES}
}

proc update_MODELPARAM_VALUE.CLK_FREQ { MODELPARAM_VALUE.CLK_FREQ PARAM_VALUE.CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQ}] ${MODELPARAM_VALUE.CLK_FREQ}
}

proc update_MODELPARAM_VALUE.BAUD_RATE { MODELPARAM_VALUE.BAUD_RATE PARAM_VALUE.BAUD_RATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BAUD_RATE}] ${MODELPARAM_VALUE.BAUD_RATE}
}

