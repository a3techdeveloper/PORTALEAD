<?php

/* 
 * Funçoes que manipulam strings
 */
$variavel = 'Isto é um teste';
$variavel = "Isto é um teste";

/*
 * Ao imprimir saída
 */
$fruta = "maçã";
echo "eu gosto de $fruta <br>";
echo 'eu gosto de $fruta <hr>';

/*
 * Concatenação (unir, juntar)
 */
echo $fruta . ' é a fruta de Adão <br>';
echo "{$fruta} é a fruta de Eva <hr>";

$a = 1234;
echo 'O salário é ' . $a . '<br>';
echo "O salário é {$a} <hr>";

/*
 * Caracteres de Escape
 */
echo "seu nome é \"Paulo\" <br>";
echo 'seu nome é "Paulo" <hr>';

/*
 * Converte todos os caracteres em maiúsculos
 */
echo strtoupper("eu moro em são paulo e gosto de pão");
echo "<br>";
echo mb_strtoupper("eu moro em são paulo e gosto de pão");
echo "<hr>";

/*
 * Converte todos os caracteres em minúsculos
 */
echo strtolower("SÃO PAULO É UMA CIDADE COM VÁRIOS PROBLEMAS");
echo "<br>";
echo mb_strtolower("SÃO PAULO É UMA CIDADE COM VÁRIOS PROBLEMAS");
echo "<hr>";

/*
 * Retorna parte de uma string
 */
$resto = mb_substr("América", 1);
echo "$resto <br>";
$resto = mb_substr("América", 1, 3);
echo "$resto <br>";
$resto = mb_substr("América", 0, -1);
echo "$resto <hr>";

/*
 * Preenche uma string com outra string
 */
$banda = "The Beatles";
echo str_pad($banda, 20) . "<br>";
echo str_pad($banda, 20, "*", STR_PAD_LEFT) . "<br>";
echo str_pad($banda, 20, "*", STR_PAD_RIGHT) . "<br>";
echo str_pad($banda, 20, "*", STR_PAD_BOTH) . "<hr>";

