# Include common settings
#
m4_include(conky/common)
#
# Main conky config
#
${nodename}: ${kernel}   \
|   Uptime: $uptime   \
|   Root: ${fs_used /}/${fs_size /}  \
|   CPU: ${cpugraph cpu0 10,15 000000 000000} \
${cpugraph cpu1 10,15 000000 000000} \
${cpugraph cpu2 10,15 000000 000000} \
${cpugraph cpu3 10,15 000000 000000} \
${exec sensors | grep 'Core 0' | sed -e s/°C.*\)/°C/ -e s/Core.*+//}\
   RAM: $mem/$memmax \
   SWAP: ${swap}/${swapmax}    \
|   Up: ${upspeedgraph wlp58s0 10,50 000000 000000} ${upspeed wlp58s0}/${totalup wlp58s0}\
   Down: ${downspeedgraph wlp58s0 10,50 000000 000000} ${downspeed  wlp58s0}/${totaldown wlp58s0}
