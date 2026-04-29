#!/bin/sh

if [ ! -d "./target" ]; then
    mkdir target
fi

iverilog ./src/*.v ./testbench/tb_RISCVCPU.v -o ./target/bin $1

printf "\n\n\n"

if [ -f "./target/bin" ]; then
    vvp target/bin
else
    echo "Binary file not found!"
fi
