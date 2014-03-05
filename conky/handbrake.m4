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
   RAM: ${color cyan}$mem$color/$memmax \
   SWAP: ${color cyan}${swap}${color}/${swapmax}    \
|   Up: ${upspeedgraph eth0 10,50 000000 000000} ${color cyan}${upspeed eth0}$color/${totalup eth0}\
   Down: ${downspeedgraph eth0 10,50 000000 000000} ${color cyan}${downspeed  eth0}$color/${totaldown eth0}
