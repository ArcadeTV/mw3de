; =================================================================================================
; POINTER TABLE DATA: SPECIAL DIALOGUES (Shop, Inn, Music-Teacher..)
; origin: $21FCA
; Format: XXXX.w
;         XXXX: Distance from pointer table base
; =================================================================================================

    align 2

base_PointerTable_SpecialDialogues:
                                                     ;negative absolute     pointsTo
                                                     ; ˅       ˅            ˅
    dc.w special1-base_PointerTable_SpecialDialogues ; FBB4 => 044C         21B7E-21CC5     Shop Items
    dc.w special2-base_PointerTable_SpecialDialogues ; FCFC => 0304         21CC6-21E6B     Inn
    dc.w special3-base_PointerTable_SpecialDialogues ; FEA2 => 015E         21E6C-21EF3     Sonia, teaching ocarina melodies
    dc.w special4-base_PointerTable_SpecialDialogues ; FF2A => 00D6         21EF4-21EF9     
    dc.w special5-base_PointerTable_SpecialDialogues ; FF30 => 00D0         21EFA-21EFF     
    dc.w special6-base_PointerTable_SpecialDialogues ; FF36 => 00CA         21F00-21F05     
    dc.w special7-base_PointerTable_SpecialDialogues ; FF3C => 00C4         21F06-21F36     
    dc.w special8-base_PointerTable_SpecialDialogues ; FF6D => 0093         21F37-21FC9     Sonia, teaching ocarina melodies 
    
    
    
    
    
    
    
    
    