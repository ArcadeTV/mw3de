; =================================================================================================
; POINTER TABLE DATA: NAMES
; origin: $7BFE
; Format: XXXX.w
;         XXXX: Distance from pointer table base
; =================================================================================================

    align 2

base_PointerTable_Magic:

    dc.w magic1-base_PointerTable_Magic
    dc.w magic2-base_PointerTable_Magic
    dc.w magic3-base_PointerTable_Magic
    dc.w magic4-base_PointerTable_Magic
    dc.w magic5-base_PointerTable_Magic
    dc.w magic6-base_PointerTable_Magic
