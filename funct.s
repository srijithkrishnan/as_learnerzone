.data

.balign 4
message1:
	.asciz "Enter your input\n"

.balign 4
message2:
	.asciz "%d times 5 is %d\n"

.balign 4
scan_num:
	.asciz "%d"

.balign 4
return:
	.word 0

.balign 4
return2:
	.word 0

.balign 4
num_read:
	.word 0

.text

multy_5:
	ldr r1, addr_return2
	str lr, [r1]
	add r0, r0, r0, lsl #2
	ldr lr, addr_return2
	ldr lr, [lr]
	bx lr	
addr_return2: .word return2	 

.global main

main:
	ldr r1, addr_return
	str lr, [r1]
	ldr r0, addr_message1
	bl printf
	ldr r0, addr_scan
	ldr r1, addr_num
	bl scanf
	ldr r0, addr_num
	ldr r0, [r0]
	bl multy_5
	mov r2, r0
	ldr r1, addr_num
	ldr r1, [r1]
	ldr r0, addr_message2
	bl printf
	ldr lr, addr_return
	ldr lr, [lr]
	bx lr

addr_return: .word return
addr_message1: .word message1
addr_message2: .word message2
addr_num: .word num_read
addr_scan: .word scan_num

.global printf
.global scanf

