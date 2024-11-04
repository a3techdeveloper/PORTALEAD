<?php

function meuAutoload($classe){    
    $extensao = spl_autoload_extensions();
    require_once "./model/".$classe.$extensao;    
}

spl_autoload_extensions('.class.php');
spl_autoload_register('meuAutoload');