function prop(object, prop)

    local value

    for i = 1 to len(object)
        if object[i,1] == prop
            value = object[i,2]
            exit
        endif
    next

return value

function setProp(object,prop,newValue)

    for i = 1 to len(object)
        if object[i,1] == prop
            object[i,2] = newValue
            exit
        endif
    next

return object