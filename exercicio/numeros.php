<?php

/* 
 * Number Format - definir quantidade de casas decimais
 */
$dec = 25.87499;
echo number_format($dec, 2) . "<br>";

/*
 * Number Format - definir o separador de decimais
 */
$n = 8.89;
echo number_format($n, 2, ",", null) . "<br>";

/*
 * Number Format - definir o separador de milhares
 */
$s = 32578.97;
echo number_format($s, 2, ",", ".") . "<br>";

/*
 * Funções Matemáticas
 * Retorna o valor da constante matemática PI
 */
echo pi() . "<br>";

/*
 * Retorna a raiz quadrada de um número
 */
echo sqrt(81) . "<br>";

/*
 * Retorna a potência de um número
 */
echo pow(2, 3) . "<br>";

/*
 * Retorna um número randômico dentro de um intervalo definido
 */
echo rand(1, 10) . "<br>";

/*
 * Arredonda o número decimal para o primeiro inteiro acima
 */
echo ceil(1.01) . "<hr>";

/*
 * Conversões numéricas
 * Converte dado binário em hexadecimal
 */
echo bin2hex(001) . "<br>";

/*
 * Converte dado binário em decimal
 */
echo bindec(1001) . "<br>";

/*
 * Converte dado hexadecimal em binário
 */
echo hex2bin("1C") . "<br>";

/*
 * Converte dado hexadecimal em decimal
 */
echo hexdec("B45") . "<br>";

/*
 * Converte dado decimal em binário
 */
echo decbin(9) . "<br>";

/*
 * Converte dado decimal em octo
 */
echo decoct(9) . "<br>";

/*
 * Converte dado decimal em hexadecimal
 */
echo dechex(1010) . "<br>";
