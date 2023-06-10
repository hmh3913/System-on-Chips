onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ram_2port_2048x32_opt

do {wave.do}

view wave
view structure
view signals

do {ram_2port_2048x32.udo}

run -all

quit -force
