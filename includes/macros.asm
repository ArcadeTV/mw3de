; =================================================================================================
; MACROS
; =================================================================================================

; Set the VRAM (video RAM) address to write to next
    macro SetVRAMWrite
    move.l  #(vdp_cmd_vram_write)|((\1)&$3FFF)<<16|(\1)>>14,vdp_control
    endm
