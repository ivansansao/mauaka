PROCEDURE Confirm(arg)
    LOCAL nChoice
    LOCAL aMenuItems := { "  Sim  ", "  Nao  " }

    LOCAL aActionItems := { }
    local width

    if empty(arg)
        arg = "Confirma?"
    endIf
    width = max(len(arg),08) + 3

    @ 07,08 clear to 13, 08+width
    @ 07,08  to 13, 08+width 
    @ 08,10 say arg

    nChoice := ACHOICE( 10, 10, 13, 17, aMenuItems )

return nChoice = 1
