setmode -bscan
setcable -p auto
identify
assignfile -p 1 -file "./build/Top.bit"
program -p 1
quit
