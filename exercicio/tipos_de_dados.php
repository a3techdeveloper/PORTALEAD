<?php

/* 
 * Booleano
 */

$exibir_nome = true;

if($exibir_nome){
    echo "A3Tech Cursos e Treinamento <hr>";
}

$umidade = 91;
$vai_chover = ($umidade > 90);

echo "$vai_chover <hr>";
var_dump($vai_chover);

if($vai_chover){
    echo "Leve seu guarda-chuva <hr>";
}

/*
 * Numérico
 */

$dec = 1234;
$oct = 0123;
$hex = 0x1A;
$flo = 1.234;
$cie = 4e23;

/*
 * String
 */
$str_s = 'Isto é uma string';
$str_d = "Isto é uma string";

/*
 * Array
 */
$veiculos = array("Corsa","Fusca","Pálio","Belina");
echo $veiculos[0];
echo "<hr>";

/*
 * Objeto
 */
class Computador{
    var $cpu;
    function ligar(){
        echo "Ligando computador a {$this->cpu} ... <hr>";
    }
}
#cria o objeto
$obj = new Computador();
$obj->cpu = "500Mhz";
$obj->ligar();

/*
 * Recurso
 */
$ponteiro = fopen("delimitadores.php", "r");
var_dump($ponteiro);

/*
 * NULL
 */
$nulo = null;
if(is_null($nulo)){
    echo "O tipo é NULL <hr>";
}

/*
 * Indefinida
 */
$abc;
if(is_null($abc)){
    echo "O tipo é Indefinido <hr>";
}