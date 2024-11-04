<?php

/* 
 * Criando um array bidimensional (Matriz)
 */
$veiculos = array(
    "Palio" => array(
        "cor" => "azul",
        "potência" => "1.0",
        "opcionais" => "Ar Condicionado"
    ),
    "Corsa" => array(
        "cor" => "cinza",
        "potência" => "1.3",
        "opcionais" => "Multimídia"
    ),
    "Gol" => array(
        "cor" => "branco",
        "potência" => "1.0",
        "opcionais" => "Metálica"
    )
);

/*
 * Iterando sobre Matriz
 */
foreach ($veiculos as $key => $value) {
    echo "<br> Veículo: $key <br>";
    foreach ($value as $caracteristica => $valor) {
        echo "$caracteristica: $valor <br>";
    }
}





