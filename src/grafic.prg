function anyColor(number)
    
return str(int(9+mod(number,7)))

function ShowChars()

    local i
    local row := 0
    local col := 0

    cls

    for i = 0 to 255

        if row = maxrow()
            row = 0
            col += 7
        endIf        
        @ row,col say alltrim(str(i))+": "+chr(i)
        row++
    end

    inkey(0)

return