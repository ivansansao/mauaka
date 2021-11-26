set procedure to ./src/strings.prg

function main() 

    teste_StringToOject()

return

function teste_StringToOject()

    // local motor := '{{"cor","branco"},{"velocidade",230}}'
    local texto := '{{"central"},{"carburador",{"injetado",1}},{"km",50000},date()}'

    local oObject := StringToOject(texto)
    local string := ObjectToString(oObject)

    pessoa := {"acao","seconds"}
    ? " -> ", &(pessoa[2]+"()")
    ? " -> ", &(pessoa[2]+"()")

    ? "Original: ",texto
    ? "Retorno.: ",string

return