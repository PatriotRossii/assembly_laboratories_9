global Calculate_

Calculate_:
        ; 1st - rdi, 2nd - rsi
        ; 3rd - rdx, 4th - rcx, 5th - r8, 6th - r9

        vmovsd xmm0, [rdi]
        vmovsd xmm1, [rsi]

        movapd xmm2, xmm0
        vaddsd xmm2, xmm1
        vmovsd [rdx], xmm2

        movapd xmm2, xmm0
        vsubsd xmm2, xmm1
        vmovsd [rcx], xmm2

        movapd xmm2, xmm0
        vmulsd xmm2, xmm1
        vmovsd [r8], xmm2

        vdivsd xmm0, xmm1
        vmovsd [r9], xmm0

        ret
