# Include common settings
#
m4_include(conky/common)
#
# Main conky config
#
${kernel}   \
|   Uptime: $uptime   \
|   Free Space: ${fs_free /}   \
|   CPU: ${cpugraph cpu0 10,15 000000 000000} \
${cpugraph cpu1 10,15 000000 000000} \
${cpugraph cpu2 10,15 000000 000000} \
${cpugraph cpu3 10,15 000000 000000} \
${exec sensors | grep 'Core 0' | sed -e s/°C.*\)/°C/ -e s/Core.*+//}    \
|   RAM: $mem/$memmax     SWAP: ${swap}/${swapmax}    \
|   Up: ${upspeedgraph wlp3s0 10,50 000000 000000} ${upspeed wlp3s0}/${totalup wlp3s0}    \
Down: ${downspeedgraph wlp3s0 10,50 000000 000000} ${downspeed  wlp3s0}/${totaldown wlp3s0}
