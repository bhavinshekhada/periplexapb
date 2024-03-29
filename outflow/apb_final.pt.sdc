
# Efinity Interface Designer SDC
# Version: 2023.1.150
# Date: 2024-02-26 16:01

# Copyright (C) 2017 - 2023 Efinix Inc. All rights reserved.

# Device: T120F324
# Project: apb_final
# Timing Model: C4 (final)

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {clock_r}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {clock_r}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {clock_w}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {clock_w}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {i_Rx_Serial}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {i_Rx_Serial}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {reset}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {reset}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {sel}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {sel}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {write}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {write}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_Tx_Active}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_Tx_Active}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_Tx_Done}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_Tx_Done}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_Tx_Serial}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_Tx_Serial}]

# JTAG Constraints
####################
# create_clock -period <USER_PERIOD> [get_ports {jtag_inst1_TCK}]
set_output_delay -clock jtag_inst1_TCK -max 0.111 [get_ports {jtag_inst1_TDO}]
set_output_delay -clock jtag_inst1_TCK -min -0.053 [get_ports {jtag_inst1_TDO}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_CAPTURE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_CAPTURE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_RESET}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_RESET}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.231 [get_ports {jtag_inst1_SEL}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.116 [get_ports {jtag_inst1_SEL}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_UPDATE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_UPDATE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.321 [get_ports {jtag_inst1_SHIFT}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.161 [get_ports {jtag_inst1_SHIFT}]
# JTAG Constraints (extra... not used by current Efinity debug tools)
# create_clock -period <USER_PERIOD> [get_ports {jtag_inst1_DRCK}]
# set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_RUNTEST}]
# set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_RUNTEST}]
# Create separate clock groups for JTAG clocks. Remove DRCK clock from the list below if it is not defined.
# set_clock_groups -asynchronous -group {jtag_inst1_TCK jtag_inst1_DRCK}
