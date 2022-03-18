    rept    $20
    dc.b    $FF;
    endr

tableStart:
    dc.w    tableStart
    dc      "here",$1234