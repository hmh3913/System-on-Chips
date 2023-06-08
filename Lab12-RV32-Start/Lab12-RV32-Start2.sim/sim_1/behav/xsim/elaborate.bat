@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Jun 02 21:27:52 +0900 2023
REM SW Build 2258646 on Thu Jun 14 20:03:12 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto 38f2470b31654bb7bfc52a17470327a6 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L blk_mem_gen_v8_4_1 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_RV32I_SoC_behav xil_defaultlib.tb_RV32I_SoC xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
