.data
    i:      .word   0
    aa:     .space  40  @ 10 * sizeof(int)
    n:      .word   0
    f:      .word   0
    fmt:    .asciz  "%d\n"
    fmt1:   .asciz  "%d"

.text
.global main
.global max
main:
    @ 保存寄存器
    push    {r4, r5, lr}

    @ 读取n的值
    ldr     r0, =fmt1
    ldr     r1, =n
    bl      scanf

    @ 初始化i和f
    ldr     r4, =i 
    ldr     r4, [r4]
    ldr     r5, =f 
    ldr     r5, [r5]     
    mov     r4, #2     @ i = 2
    mov     r5, #1     @ f = 1

loop:
    @ 计算f = f * i
    mul     r5, r5, r4

    @ i = i + 1
    add     r4, r4, #1

    @ 检查循环条件 (i <= n)
    ldr     r0, =n
    ldr     r1, [r0]
    cmp     r4, r1
    ble     loop

    @ 打印f的值
    ldr     r0, =fmt
    mov     r1, r5
    bl      printf

    @ aa[7] = 10
    ldr     r0, =aa
    mov     r1, #7
    lsl     r1, r1, #2   @ 乘以4，因为int大小为4字节
    add     r0, r0, r1
    mov     r1, #10
    str     r1, [r0]

    @ 调用max函数并打印结果
    ldr     r1, =aa
    ldr     r0, [r0, #28]  @ aa[7]
    mov     r1, r5
    bl      max
    ldr     r0, =fmt
    bl      printf

    @ 恢复寄存器并退出
    pop     {r4, r5, pc}

max:
    @ 函数参数：r0=a, r1=b
    cmp     r0, r1
    movge   r1, r0
    bx      lr

