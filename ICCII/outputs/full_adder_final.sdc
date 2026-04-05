################################################################################
#
# Design name:  full_adder
#
# Created by icc2 write_sdc on Sat Apr  4 07:28:30 2026
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 9
create_clock -name Clock -period 10 -waveform {0 5} [get_ports {Clock}]
set_propagated_clock [get_clocks {Clock}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.000143051 [get_clocks {Clock}]
# -origin useful_skew
set_clock_latency -max 0.000181198 [get_clocks {Clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {Clock}]
set_clock_uncertainty 0.2 [get_clocks {Clock}]
set_clock_transition 0.1 [get_clocks {Clock}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 16
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {A[3]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 17
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {A[2]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 18
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {A[1]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 19
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {A[0]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 20
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {B[3]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 21
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {B[2]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 22
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {B[1]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 23
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {B[0]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 24
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {C_in}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 25
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {C_out}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 15
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {Clock}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 26
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {SUM[3]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 27
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {SUM[2]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 28
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {SUM[1]}]
# /home/student/Downloads/Workshop/DC/outputs/full_adder.sdc, line 29
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {SUM[0]}]
