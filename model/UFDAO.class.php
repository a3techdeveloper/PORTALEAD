<?php

include_once 'Conecta.class.php';;

class UFDAO extends Conecta {
    
    private $tabela = "uf";
    
    public function listarTudo(){
        $sql = "select * from $this->tabela";
        $stmt = UFDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    
}
