global Calculate_

Calculate_:
        ; 1st - rdi, 2nd - rsi
        ; 3rd - rdx, 4th - rcx, 5th - r8, 6th - r9

        movsd xmm0, [rdi]
        movsd xmm1, [rsi]

        movapd xmm2, xmm0
        addsd xmm2, xmm1
        movsd [rdx], xmm2

        movapd xmm2, xmm0
        subsd xmm2, xmm1
        movsd [rcx], xmm2

        movapd xmm2, xmm0
        mulsd xmm2, xmm1
        movsd [r8], xmm2

        divsd xmm0, xmm1
        movsd [r9], xmm0

        ret
