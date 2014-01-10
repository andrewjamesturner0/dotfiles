# Include common settings
#
m4_include(conky/common)
#
# Main conky config
#
${color}${nodename}: ${color cyan}${kernel}${color}   \
|   Uptime: ${color cyan}$uptime$color   \
|   Root: ${color cyan}${fs_used /}$color/${fs_size /}\
   Home: ${color cyan}${fs_used /home}$color/${fs_size /home}   \
|   CPU: ${cpugraph cpu0 10,15 000000 000000} \
${cpugraph cpu1 10,15 000000 000000} \
${cpugraph cpu2 10,15 000000 000000} \
${cpugraph cpu3 10,15 000000 000000} ${color}\
${color cyan}${exec sensors | grep 'Core 0' | sed -e s/°C.*\)/°C/ -e s/Core.*+//}$color\
   Loadavg: ${color cyan}${loadavg}${color}\
   RAM: ${color cyan}$mem$color/$memmax \
   SWAP: ${color cyan}${swap}${color}/${swapmax}    \
|   Up: ${upspeedgraph wlp3s0 10,50 000000 000000} ${color cyan}${upspeed wlp3s0}$color/${totalup wlp3s0}\
   Down: ${downspeedgraph wlp3s0 10,50 000000 000000} ${color cyan}${downspeed  wlp3s0}$color/${totaldown wlp3s0}
