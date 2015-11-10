.data
.text
.globl main
main:
addiu $sp, $sp, -24(push)
sw $ra,20($sp)
sw $fp,16($sp)
move $fp,$sp
li $a0,7
li $a1,8 call
jal comp
move $sp,$fp
lw $ra,20($sp)
addiu $sp,$sp,32
j $ra

#done, terminate program.
li $v0, 10
syscall # exit
.end main

.globl comp
comp:
addiu $sp, $sp, -48
sw $ra,44($sp)
sw $fp,40($sp)
sw $s1, 36($sp)
sw $s0,32($sp)
move $fp, $sp
sw $a0,48($fp)
sw $a1,52($fp)
li $v0,1
sw $v0,24($fp)
li $v0,2
sw $v0,28($fp)
li $s0,5
li $s1,6
sw $s0,16($sp)
sw $s1,20($sp)
lw $a0,24($fp)
lw $a1,28($fp)
lw $a2,48($fp)
lw $a3,52($fp)
jal args6
addu $v0,$s0,$s1
move $sp,$fp
lw $ra,44($sp)
lw $fp,40($sp)
lw $s1, 36($sp)
lw $s0,32($sp)
addiu $sp,$sp,48
j $ra
.end comp

.globl args6
arg6:
addiu $sp,$sp,-8
sw $fp,0($sp)
move $fp,$sp
sw $a0,8($fp)
sw $a1, 12($fp)
sw $a2, 16($fp)
sw $ae,20($fp)
lw $v1,8($fp)
lw $v0,12($fp)
addu $v0,$v1,$v0
lw $v1,16($fp)
addu $v0,$v0,$v1
lw $v1,20($fp)
addu $v0,$v0,$v1
lw $v1,24($fp)
addu $v0,$v0,$v1
lw $v1,28($fp)
addu $v0,$v0,$v1
move $sp,$fp
lw $fp,0($sp)
addiu $sp,$sp,8
j $ra
.end arg6
