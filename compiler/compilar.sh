#!bash

rm ./src/tests
rm ./src/tests.c
clear

echo "Como usar:"
echo "~/dev/clipa/sudo sh ./compiler/compilar.sh "

echo "****** COMPILANDO PARTE 1 ******"
if sudo harbour ./src/tests.prg; then

    echo "****** COMPILANDO PARTE 2 ******"
    sudo hbmk2 ./tests.c

    echo "****** ABRINDO tests... ******"
    ./tests
fi
