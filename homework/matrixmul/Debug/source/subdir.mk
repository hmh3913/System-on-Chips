################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../matrixmul.cpp 

OBJS += \
./source/matrixmul.o 

CPP_DEPS += \
./source/matrixmul.d 


# Each subdirectory must supply rules for building sources it contributes
source/matrixmul.o: C:/Xilinx/SoC/matrixmul/matrixmul.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado/2018.2/include/ap_sysc -IC:/Xilinx/Vivado/2018.2/include -IC:/Xilinx/Vivado/2018.2/include/etc -IC:/Xilinx/SoC -IC:/Xilinx/Vivado/2018.2/win64/tools/auto_cc/include -IC:/Xilinx/Vivado/2018.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


