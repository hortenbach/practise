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

#  Design library creation and design compilation commands. Can be prompted in shell or in transcript window.
# vlib 	 -  	Create a new design library
# vmap 	 -  	Define mapping between logical library name and directory path
# vdir 	 -  	List the contents of a design library
# vdel 	 -  	Delete a design unit from a specified library
# vmake 	 -  	Create a Makefile for a specified design library
# vcom 	 -  	Compile VHDL source code into a specified design library
# vsim 	 -  	Invoke the VSIM simulator
# verror i 	 -  	Prints info about warning/error messages, i is 4-digit msg number

# Simulation commands.
# view 	 -  	Create windows (wave, list, source etc).
# add wave 	 -  	Add objects to Wave window
# force 	 -  	Force a stimulus to VHDL signals
# change 	 -  	Change the value of a VHDL variable, constant or generic
# run 	 -  	Run simulation
# restart 	 -  	Reload and restart the simulation, option -f overrrides need for confirmation
# do 	 -  	Execute a macro (do) file

# Debug commands.
# examine 	 -  	Examine the value of a signal or a variable
# bp 	 -  	Set a breakpoint
# disablebp 	 -  	Disable breakpoints
# enablebp 	 -  	Enable breakpoints
# checkpoint 	 -  	Save a simulator state
# restore 	 -  	Restore saved simulator state