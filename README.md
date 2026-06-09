# UART Receiver Using Verilog HDL

## Project Overview

This project implements a UART (Universal Asynchronous Receiver Transmitter) Receiver using Verilog HDL.

The receiver accepts serial data, detects the start bit, receives 8-bit data, and generates a completion signal after successful reception.

## UART Frame Format

Start Bit | Data[7:0] | Stop Bit

0 | 8-bit Data | 1

## Features

* Start Bit Detection
* Serial Data Reception
* 8-bit Data Reconstruction
* Reception Complete Signal
* Sequential Logic Design

## Inputs

| Signal | Description  |
| ------ | ------------ |
| clk    | Clock        |
| rst    | Reset        |
| rx     | Serial Input |

## Outputs

| Signal        | Description        |
| ------------- | ------------------ |
| data_out[7:0] | Received Data      |
| done          | Reception Complete |

## Example

Received UART Frame:

0 01000001 1

Output:

01000001 (ASCII 'A')

## Concepts Used

* Shift Register Concept
* Sequential Logic
* UART Protocol
* Serial Communication

## Tools Used

* Verilog HDL
* Icarus Verilog
* VS Code
* GitHub

## Project Structure

RTL/
└── uart_rx.v

TB/
└── uart_rx_tb.v

## Author

Suriya K S

Electronics and Communication Engineering

Government College of Engineering, Erode
