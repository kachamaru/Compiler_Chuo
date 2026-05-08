    .text
    .globl test
    .type test, @function
test:
    movl $0, %eax        # result = 0
    movl $0, %ecx        # i = 0

.Lloop:
    cmpl $10, %ecx       # i と 10 を比較
    jge .Lend            # i >= 10 なら終了

    addl %ecx, %eax      # result += i
    addl $1, %ecx        # i += 1

    jmp .Lloop           # ループ先頭へ戻る

.Lend:
    ret

    .size test, .-test
    .section .note.GNU-stack,"",@progbits