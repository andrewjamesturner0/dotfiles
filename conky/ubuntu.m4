alignment bottom_left
#alignment top_left
double_buffer yes
background yes
border_width 1
cpu_avg_samples 2
default_color white
default_outline_color white
default_shade_color white
draw_borders no
draw_graph_borders yes
draw_outline no
draw_shades no
use_xft yes
xftfont bitstreamvera:size=8
gap_x 5
gap_y 1
minimum_size 1680 3
net_avg_samples 2
no_buffers yes
out_to_console no
out_to_stderr no
extra_newline no
own_window yes 
own_window_type sticky 
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager 
own_window_argb_visual yes ##This controls transparency on gnome
own_window_argb_value 120 ##This controls the opacity
pad_percents 2
stippled_borders 0
update_interval 2.0
uppercase no
use_spacer left
show_graph_scale no
show_graph_range no

TEXT
## === phq0 ===
${color}${nodename}: ${color cyan}${kernel}${color}   \
|   up: ${color cyan}$uptime$color   \
|   Root: ${color cyan}${fs_used /}$color/${fs_size /}\
   Home: ${color cyan}${fs_used /home}$color/${fs_size /home}   \
|   CPU: ${cpugraph cpu0 10,15 000000 000000} \
${cpugraph cpu1 10,15 000000 000000} \
${cpugraph cpu2 10,15 000000 000000} \
${cpugraph cpu3 10,15 000000 000000} ${color}\
${color cyan}${exec sensors | grep 'Core 0' | sed -e s/�C.*\)/�C/ -e s/Core.*+//}$color\
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
