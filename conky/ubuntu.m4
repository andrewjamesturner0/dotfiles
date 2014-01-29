# Include common settings
#
m4_include(conky/common)
#
# Main conky config
#
${color}${nodename}: ${color cyan}${kernel}${color}   \
|   up: ${color cyan}$uptime$color   \
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
|   Net-Up: ${upspeedgraph wlp3s0 10,50 000000 000000} ${color cyan}${upspeed wlp3s0}$color/${totalup wlp3s0}\
   Net-Down: ${downspeedgraph wlp3s0 10,50 000000 000000} ${color cyan}${downspeed  wlp3s0}$color/${totaldown wlp3s0}
## === phq2 ===
#${color}${nodename}: ${color cyan}${sysname} ${kernel}${color}
#up: ${color cyan}$uptime$color
#Root: ${color cyan}${fs_used /} $color/${fs_size /}
#CPU: ${color cyan}${cpu cpu}%${color} ${cpugraph cpu0 10,50 000000 000000}
#RAM: ${color cyan}$mem$color
#Net-Up: ${upspeedgraph re0 10,50 000000 000000} ${color cyan}${upspeed re0}$color/${totalup re0}
#Net-Down: ${downspeedgraph re0 10,50 000000 000000} ${color cyan}${downspeed  re0}$color/${totaldown re0}
