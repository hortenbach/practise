# do file for play project
# create library for play-project
vlib playlib
# map new library to work
vmap work playlib
# we can check mapping by callin "vmap" in modlsim if we want to look at it

vcom -check_synthesis play.vhd play_tb.vhd

#load design
vsim playlib.play_tb

#Wave 	 -  	See waveforms
#Objects 	 -  	See signals and their values
#Source 	- 	Trace your code line-by-line
#Locals 	 -  	See variables and their values
# view objects sources locals wave 

# Show all signals that are in Objects pane in Wave window
add wave * 

#vcom -reportprogress 300 -work work ./play_tb.vhd
#vcom -reportprogress 300 -work work C:/Users/gsh/Code/vhdl/play.vhd

