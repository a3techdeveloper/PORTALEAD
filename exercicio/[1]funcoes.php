<?php

$a = array("verde","azul","vermelho");

/* 
 * Adiciona elementos no final do array
 */
array_push($a, "amarelo");
var_dump($a);

/* 
 * Remove um elemento no final do array
 */
array_pop($a);
var_dump($a);

/* 
 * Remove um elemento no início do array
 */
array_shift($a);
var_dump($a);

/* 
 * Adiciona elementos no início do array
 */
array_unshift($a, "laranja", "roxo");
var_dump($a);

/*
 * Preenche o array com um valor, determinada posições
 */
$cli = array("Maria","Marcos","Simone");
$cli_n = array_pad($cli, 6, "Luiza");
var_dump($cli_n);

/*
 * Retorna na ordem reversa
 */
$num[0] = 1;
$num[1] = 2;
$num[2] = 3;
$num[3] = 4;

$rev = array_reverse($num, true);
var_dump($rev);

/*
 * Mescla dois ou mais arrays
 */
$times_paulistas = array("Palmeiras","Corinthians");
$times_cariocas = array("Vasco da Gama","Botafogo");
$times_juntos = array_merge($times_paulistas,$times_cariocas);
var_dump($times_juntos);

/*
 * Retorna as chaves de um array associativo
 */
$aluno = array("matricula"=>"0012","nome"=>"Liliane",
                                            "idade"=>14);
$indices = array_keys($aluno);
var_dump($indices);

/*
 * Retorna os valores dos índices de um array
 */
$valores = array_values($aluno);
var_dump($valores);

/*
 * Extrai uma fatia de um array
 */
$color[0] = "green";
$color[1] = "yellow";
$color[2] = "red";
$color[3] = "blue";
$color[4] = "gray";
$color[5] = "white";

$fatia = array_slice($color, 2, 4);
var_dump($fatia);

/*
 * Retorna a quantidade de elementos de um array
 */
$bebidas = array("refrigerante","suco","vinho","cerveja","vodka");
echo 'O array $bebidas contém ' . count($bebidas) . ' elementos <hr>';

/*
 * Verifica se um array contém um determinado valor
 */
if(in_array("café", $bebidas)){
    echo "Café foi encontrado <hr>";
}else{
    echo "Café não foi encontrado <hr>";
}

/*
 * Ordena um array pelo seu valor, não mantendo associação de índices
 * asort()
 */
sort($bebidas);
var_dump($bebidas);

/*
 * Ordena um array em ordem reversa rsort()
 * arsort()
 */
rsort($bebidas);
var_dump($bebidas);

/*
 * Ordena um array associativo pelos índices
 * krsort()
 */
$automovel["potência"] = "1.0"; 
$automovel["cor"] = "branco"; 
$automovel["modelo"] = "Celta"; 
$automovel["opcionais"] = "Ar Quente";

ksort($automovel);
var_dump($automovel);

/*
 * Converte uma string em um array, separando elementos por meio de um
 * identificador
 */
$data = "05/07/2021";
var_dump(explode("/", $data));

/*
 * Converte um array em uma string, unindo os elementos por meio de um
 * identificador
 */
$padrao = array("Maria","Paulo","Joana","Loiane");
echo implode(" - ", $padrao);