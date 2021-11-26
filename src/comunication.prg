PROCEDURE Confirm(arg)
    LOCAL nChoice
    LOCAL aMenuItems := { "  Sim  ", "  Nao  " }

    LOCAL aActionItems := { }

    if empty(arg)
        arg = "Confirma?"
    endIf
    @ 07,08 clear to 13,31 
    @ 07,08  to 13,31 
    @ 08,10 say arg

    nChoice := ACHOICE( 10, 10, 13, 17, aMenuItems )

return nChoice = 1
