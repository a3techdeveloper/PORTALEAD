<?php

/* 
 * Criando uma função (variável global)
 */

$total = 0;
function km2mi($quilometros){
    global $total;
    $total += $quilometros;
    return $quilometros * 0.6;
}

echo "percorreu " . km2mi(100) . " milhas <br>";
echo "percorreu " . km2mi(200) . " milhas <br>";
echo "percorreu no total " . $total . " quilometros <hr>";

/* 
 * Criando uma função (variável estática)
 */
function percorre($quilometros){
    static $total = 0;
    $total += $quilometros;
    echo "percorreu mais $quilometros do total de $total <br>";
}

percorre(100);
percorre(200);
percorre(50);
echo "<hr>";

/*
 * Passagem de parâmetros (by value e by reference)
 */
function incrementaByValue($variavel, $valor){
    $variavel += $valor;
}
$a = 10;
incrementaByValue($a, 20);
echo "$a <hr>";

function incrementaByReference(&$variavel, $valor){
    $variavel += $valor;
}
$b = 10;
incrementaByReference($b, 20);
echo "$b <hr>";

/*
 * Passagem de parâmetros com valor default
 */
function incrementaParamDefault(&$variavel, $valor = 40){
    $variavel += $valor;
}
$c = 10;
incrementaParamDefault($c);
echo "$c <br>";
incrementaParamDefault($c, 60);
echo "$c <hr>";

/*
 * Argumentos variáveis
 */
function Ola(){
    $argumentos = func_get_args();
    $quantidade = func_num_args();
    
    for($n = 0; $n < $quantidade; $n++){
        echo "<br> Olá ". $argumentos[$n];
    }
}
Ola("Victor","Maria","Joana","Zeca","Almir");
echo "<hr>";

/*
 * Função Recursiva (recursividade)
 */
function Fatorial($n){
    if($n == 0 || $n == 1){
        return 1;
    }else{
        return $n * Fatorial($n - 1);
    }
}

echo Fatorial(5);
