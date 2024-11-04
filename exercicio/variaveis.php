<?php

$nome = "Anderson";
$idade = 42;
$cidade = "Águas Lindas";

echo $nome, $idade, $cidade;
echo "<hr>";

$variavel = "veiculo";
$$variavel = "TR4";

echo $variavel;
echo "<hr>";
echo $veiculo;
echo "<hr>";

$a = 5;
$b = $a;
$b = 10;
echo "valor de a: $a, valor de b: $b";
echo "<hr>";

$c = 5;
$d = &$c;
$d = 10;
echo "valor de c: $c, valor de d: $d";
echo "<hr>";

$esporte;
$ESPORTE;
$eSPORTE;