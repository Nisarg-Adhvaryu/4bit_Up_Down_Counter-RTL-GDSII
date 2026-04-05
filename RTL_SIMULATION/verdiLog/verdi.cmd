verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/student/Downloads/Workshop/RTL_SIMULATION/simv" -args \
           "Verdi"
debImport "-dbdir" "/home/student/Downloads/Workshop/RTL_SIMULATION/simv.daidir"
debLoadSimResult \
           /home/student/Downloads/Workshop/RTL_SIMULATION/updown_counter.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "190" "125" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcHBDrag -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
wvSetPosition -win $_nWave2 {("uut" 0)}
wvRenameGroup -win $_nWave2 {G1} {uut}
wvAddSignal -win $_nWave2 "/updown_counter_tb/uut/clk" \
           "/updown_counter_tb/uut/rst" "/updown_counter_tb/uut/dir" \
           "/updown_counter_tb/uut/count\[3:0\]"
wvSetPosition -win $_nWave2 {("uut" 0)}
wvSetPosition -win $_nWave2 {("uut" 4)}
wvSetPosition -win $_nWave2 {("uut" 4)}
wvSetCursor -win $_nWave2 12385.421853 -snap {("G2" 0)}
verdiSetActWin -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 16921.849501 -snap {("uut" 0)}
verdiShowWindow -win $_Verdi_1 -switchFS
verdiWindowResize -win $_Verdi_1 "190" "125" "900" "700"
verdiShowWindow -win $_Verdi_1 -switchFS
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 90652.765186 -snap {("G2" 0)}
verdiSetActWin -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
