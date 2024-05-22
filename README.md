# 8-Bit ALU Implementation in Verilog

This repository contains the Verilog code for an 8-bit Arithmetic Logic Unit (ALU) that performs various arithmetic and logical operations based on the provided opcode.

## Modules Description

- `alu`: The top-level module that integrates the full adder/subtractor and performs operations based on the opcode.
- `full_add_sub`: An 8-bit full adder/subtractor module used by the ALU for addition and subtraction operations.
- `full_adder`: A 1-bit full adder module used by the full adder/subtractor module.

## Operations

The ALU supports the following operations:
- **Addition**: Opcode `000`
- **Subtraction**: Opcode `001`
- **AND**: Opcode `010`
- **OR**: Opcode `011`
- **XOR**: Opcode `100`
- **Greater Than Comparison**: Opcode `101`
- **Shift Left `a`**: Opcode `110`
- **Shift Left `b`**: Opcode `111`

## Flags

The ALU sets the following flags based on the operation results:
- **Carry Out (cout)**: Set when there is an overflow in addition.
- **Carry Flag (c_flag)**: Set when the carry out is 1.
- **Zero Flag (z_flag)**: Set when the result of the operation is zero.

## Testbench and Simulation

The `alu_tb` module is the testbench for the ALU, which tests all the operations with different input values.
You can run the included testbench with your preferred simulation tool to verify the functionality of the decoder.

## Usage

To use this ALU in your project, include the `alu` module in your design and instantiate it with the appropriate signals.

## Contributing

Feel free to fork this repository and submit pull requests to contribute to the development of this ALU.

## About The Author
Author: Nada Omar

Email: na0da2021@gmail.com

Education: Electronics and communication department.

College: Faculty of Engineering, Alexandria university, Egypt.
