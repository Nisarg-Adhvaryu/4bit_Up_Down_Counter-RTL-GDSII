################################################################################
#
# Design name:  updown_counter
#
# Created by icc2 write_sdc on Sun Apr  5 05:45:46 2026
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

# /home/student/Downloads/Workshop/DC/outputs/updown_counter.sdc, line 9
create_clock -name Clock -period 10 -waveform {0 5} [get_ports {Clock}]
set_propagated_clock [get_clocks {Clock}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 5.72205e-05 [get_clocks {Clock}]
# -origin useful_skew
set_clock_latency -max 7.62939e-05 [get_clocks {Clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {Clock}]
set_clock_uncertainty 0.2 [get_clocks {Clock}]
set_clock_transition 0.1 [get_clocks {Clock}]
# /home/student/Downloads/Workshop/DC/outputs/updown_counter.sdc, line 15
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {Clock}]
# /home/student/Downloads/Workshop/DC/outputs/updown_counter.sdc, line 16
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {rst}]
# /home/student/Downloads/Workshop/DC/outputs/updown_counter.sdc, line 17
set_input_delay -clock [get_clocks {Clock}] 2 [get_ports {dir}]
# /home/student/Downloads/Workshop/DC/outputs/updown_counter.sdc, line 18
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {count[3]}]
# /home/student/Downloads/Workshop/DC/outputs/updown_counter.sdc, line 19
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {count[2]}]
# /home/student/Downloads/Workshop/DC/outputs/updown_counter.sdc, line 20
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {count[1]}]
# /home/student/Downloads/Workshop/DC/outputs/updown_counter.sdc, line 21
set_output_delay -clock [get_clocks {Clock}] 2 [get_ports {count[0]}]
