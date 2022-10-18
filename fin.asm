.386                                    ;Target processor
.MODEL FLAT,C                           ;Flat memory and use C calling
.STACK                                  ;Stack segment of 1kb
.DATA                                   ;Data segment with local variables declared
.CODE                                   ;Start of the Code
PUBLIC add_asm                          ;Allows access to the AC
add_asm PROC, arg1:DWORD, arg2:DWORD    ;Begins addition
    mov eax, arg1                       ;First target
    add eax, arg2                       ;Addition operand
    ret
add_asm ENDP                            ;End addition

PUBLIC sub_asm                          ;Allows access to the AC
sub_asm PROC, arg1:DWORD, arg2:DWORD    ;Begins subtraction
    mov eax, arg1                       ;First target
    sub eax, arg2                       ;Subtraction operand
    ret
sub_asm ENDP                            ;End subtraction

PUBLIC mult_asm                         ;Allows access to the AC
mult_asm PROC, arg1:DWORD, arg2:DWORD   ;Begins multiplication
    mov eax, arg1                       ;First target
    mul eax, arg2                       ;Multiplication operand
    ret
mult_asm ENDP                           ;End multiplication

END