# as_learnerzone
A small journey through the basics of Assembly

Focuses on the working of an ARM 32 bit in an Raspberry Pi 3 B+ model.

ARM 32 bit architecture, which is mainly used by integrators because of its flexibility.

## Assembly Language

A humanly understood code, let it be in any language(C, C++, Java, Python, etc) all of these are converted to the machine language by their respective compilers and then which is converted to the machine understandable language which is binary. This convertion is done by the assembler. Assembler converts the assembly into binary.

The tool we use here for this convertion is known as ‘as’. In particular this is a GNU assembler, an assembler tool from a GNU project.

## Executing Code 

First create a file with .s format having the contents to be executed and save it. Here First.s is taken as the sample code.

* To assemble the file type the following command 

      as -o first.o first.s

* This will create a first.o. Now link this file to get an executable. 

      gcc -o first first.o 
      
*  If everything goes as expected you will get a first file. This is your program. Run it.

       ./first

This will not give you anything as output but we can try  something so we get something in output, the error code is given with

      ./first ; echo $?


