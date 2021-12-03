set procedure to ./src/strings.prg

function main() 

    teste_StringToOject()

return

function teste_StringToOject()

    local texto := '{{"central"},{"carburador",{"injetado",1}},{"km",50000},date()}'

    local oObject := StringToOject(texto)
    local string := ObjectToString(oObject)

    pessoa := {"acao","seconds"}
    ? " -> ", &(pessoa[2]+"()") // É possível chamar uma função de dentro de um array!
    ? " -> ", &(pessoa[2]+"()")

    ? "Original: ",texto
    ? "Retorno.: ",string

return