# Include common settings
#
m4_include(conky/common)
#
# Main conky config
#
${color}${nodename}: ${color cyan}${kernel}${color}   \
|   Uptime: ${color cyan}$uptime$color   \
|   Root: ${color cyan}${fs_used /}$color/${fs_size /}  \
|   CPU: ${cpugraph cpu0 10,15 000000 000000} \
${cpugraph cpu1 10,15 000000 000000} \
${cpugraph cpu2 10,15 000000 000000} \
${cpugraph cpu3 10,15 000000 000000} ${color}\
${color cyan}${exec sensors | grep 'Core 0' | sed -e s/°C.*\)/°C/ -e s/Core.*+//}$color\
   Loadavg: ${color cyan}${loadavg}${color}\
   RAM: ${color cyan}$mem$color/$memmax \
   SWAP: ${color cyan}${swap}${color}/${swapmax}    \
|   Up: ${upspeedgraph eth0 10,50 000000 000000} ${color cyan}${upspeed eth0}$color/${totalup eth0}\
   Down: ${downspeedgraph eth0 10,50 000000 000000} ${color cyan}${downspeed  eth0}$color/${totaldown eth0}
