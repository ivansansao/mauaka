function tex(arg)
return alltrim(transform(arg,"@A"))

function concat(args)
    local i
    local concated := ""
    for i = 1 to len(args)
        concated = concated+alltrim(transform(args[i],"@A"))
    end
return concated

function concats(args)
    local i
    local concated := ""
    for i = 1 to len(args)
        concated = concated+" "+alltrim(transform(args[i],"@A"))
    end
    concated = strtran(alltrim(concated),"\s"," ")    
return concated

function StringToOject(string)
return &(string)

function ObjectToString(object)

    local value := _ObjectToString(object)
    value = "{"+value+"}"

    value = strtran(value,"{,","{")

return value

function _ObjectToString(object)

    local string := ""
    local value := ""
    local i

    for i = 1 to len(object)
        value = object[i]
        if !empty(value)
            string = string +","
        end
        if valtype(value) = "A"
            string = string +"{"+_ObjectToString(value)+"}"
        else
            string = string +encapsulateByType(value)
        end
    end

return string

function encapsulateByType(value)

    local cType := valtype(value)
    local retValue := ""
    do case
    case cType = "C"
        retValue = concat({'"',tex(value),'"'})
    otherwise
        retValue = tex(value)
    end

return retValue