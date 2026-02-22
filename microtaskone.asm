org 100h

.data
    a db 0Ah    ; 10
    b db 02h    ; 2
    c db 03h    ; 3
    d db 05h    ; 5
    e db 04h    ; 4
    f db 03h    ; 3
    res db 0    ; To store final result

.code
    ; Step 1: Calculate ((a * b) / c)
    mov al, a
    mul b       ; AX = a * b
    div c       ; AL = quotient (a*b)/c, AH = remainder
    mov bl, al  ; Store result1 (quotient) in BL

    ; Step 2: Calculate ((d * e) % f)
    mov al, d
    mul e       ; AX = d * e
    div f       ; AL = quotient, AH = remainder (d*e)%f
    mov bh, ah  ; Store result2 (remainder) in BH

    ; Step 3: Result = Result1 - Result2
    sub bl, bh
    mov res, bl ; Final answer in 'res'

    ret
