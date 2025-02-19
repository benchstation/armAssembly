> [!NOTE] 
> This repository is entirely written in **ARM Assembly**, targeting the **aarch64** architecture for **ARMv8 (64-bit)** systems.

---
Welcome to my descent into ~~the madness of~~ **low-level programming**! c:<

I wanted to understand how computers really work, so I started at the bottom: **Assembly Languages**. It's the closest one can get to the hardware, and I'm not gonna lie I'm shitless scared of it, but also curious. 

All the scripts in this repository are the result of my experiments and learning along the way.

### Ok so, why ARM Assembly?

I chose **ARM Assembly** for three main reasons:
- I have a **Raspberry Pi** (ARM-based), so it’s practical.
- ARM is everywhere... phones, microcontrollers, IoT devices, you name it.
- It has a simpler instruction set than x86 (yikes!)


### And what's next? (RISC-V!)

I’m also eyeing **RISC-V Assembly** for the future because it's not only **open-source** but also it's gaining popularity and feels like the future of processor design.

## System Architecture

As mentioned, the scripts within this repository are meant to run in **ARMv8 (64-bit)** systems, specifically using **aarch64** architecture. If you're using a **Raspberry Pi** and for God knows why is feeling like testing these messy scripts, make sure your model supports this architecture. 

Here's a quick reference to help you identify your system:

| ARM Version | Raspberry Pi Model(s)                         |Architecture   |
|-------------|-----------------------------------------------|---------------|
| **ARMv6**   | Raspberry Pi 1 (Model A, B, A+, B+, Zero, Zero W) | `armv6l`    |
| **ARMv7**   | Raspberry Pi 2 (32-bit OS)                    | `armv7l`      |
| **ARMv8**   | Raspberry Pi 3, 4, 5, Zero 2 W                | `aarch64`     |

> [!WARNING]
> **Note:** Raspberry Pi models older than 3 won't support 64-bit operating systems.

## Compilation and Execution

To automate the process of compiling and running the ARM assembly code, there's this handy [**shell script**](./compile.sh). It's written to run in Unix-based systems, though.

#### How to Use the Script
1. Make the script executable ([how?](https://askubuntu.com/questions/229589/how-to-make-a-file-e-g-a-sh-script-executable-so-it-can-be-run-from-a-termi))
2. Run the script
3. Enter the filename of your assembly code (without the `.s` extension).

## Debugging Tips

Use the command `echo $?` to check the exit status of the most recently executed command.
> - If it returns `0`, the command executed successfully.
> - If it returns a non-zero value, an error occurred.

---
😊