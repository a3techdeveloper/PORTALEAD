<?php

/* 
 * Criando um array utilizando a função array()
 */
$cores = array("vemelho","azul","verde","amarelo");
$cores2 = array(0 => "vermelho", 1 => "azul", 2 => "verde", 
                                                3 => "amarelo");

/*
 * Adicionando colchetes depois da nomenclatura da variável
 */
$nomes[] = 'Maria';
$nomes[] = 'João';
$nomes[] = 'Carlos';
$nomes[] = 'José';

/*
 * Acessando os elementos de um array
 */
echo $cores[0] . "<br>";
echo $cores[1] . "<br>";
echo $cores[2] . "<br>";
echo $cores[3] . "<hr>";

echo $nomes[0] . "<br>";
echo $nomes[1] . "<br>";
echo $nomes[2] . "<br>";
echo $nomes[3] . "<hr>";

/*
 * Arrays com índices associativos
 */
$hex = array("vermelho" => "FF0000", "verde" => "00FF00", 
                                        "azul" => "0000FF");


$pessoa["nome"] = "Maria da Silva";
$pessoa["rua"] = "São João";
$pessoa["bairro"] = "Cidade Alta";
$pessoa["cidade"] = "Porto Alegre";

/*
 * Acessando elementos de um array associativo
 */
echo $hex["vermelho"] . "<br>";
echo $hex["verde"] . "<br>";
echo $hex["azul"] . "<hr>";

echo $pessoa["nome"] . "<br>";
echo $pessoa["cidade"] . "<hr>";

/*
 * Iterações -> percorre todo o array, buscando índices e valores
 * foreach($array as $key => $value){}
 */
$fruta["cor"] = "vermelha";
$fruta["sabor"] = "doce";
$fruta["formato"] = "redonda";
$fruta["nome"] = "maçã";

foreach ($fruta as $key => $value) {
    echo "$key: $value <br>";
}

echo "<hr>";

foreach ($fruta as $value) {
    echo "$value <br>";
}

/*
 * Operações sobre elementos de um array
 */
$minha_multa["carro"] = "Pálio";
$minha_multa["valor"] = 178.00;

$minha_multa["carro"] .= " ED 1.0";
$minha_multa["valor"] += 20.00;

var_dump($minha_multa);

$comidas[] = "Lazanha";
$comidas[] = "Pizza";
$comidas[] = "Macarrão";

$comidas[1] = "Pizza Calabreza";
var_dump($comidas);