#!/bin/bash

# Check for required tools
if ! command -v arm-linux-gnueabi-as &> /dev/null; then
  echo "Error: arm-linux-gnueabi-as not found."
  exit 1
fi

if ! command -v arm-linux-gnueabi-gcc &> /dev/null; then
  echo "Error: arm-linux-gnueabi-gcc not found."
  exit 1
fi

# Get the filename of the assembly code from the user
read -p "Enter the filename of your assembly code (without .s): " filename

# Assemble the code
arm-linux-gnueabi-as "$filename.s" -o "$filename.o"

# Check for assembly errors
if [ $? -ne 0 ]; then
  echo "Assembly errors occurred."
  exit 1
fi

# Compile the object file
arm-linux-gnueabi-gcc "$filename.o" -o "$filename" -nostdlib -no-pie

# Check for compilation errors
if [ $? -ne 0 ]; then
  echo "Compilation errors occurred."
  exit 1
fi

echo "Compilation successful!"

# Make this script executable by: chmod +x compile_assembly.sh
