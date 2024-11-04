<?php

include_once 'Conecta.class.php';

class ContatoDAO extends Conecta {

    private $tabela = "contato";

    public function inserir(Contato $c) {
        $sql = "insert into $this->tabela(nome,email,fone,mensagem)value(?,?,?,?)";
        $stmt = ContatoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $c->getNome());
        $stmt->bindValue(2, $c->getEmail());
        $stmt->bindValue(3, $c->getFone());
        $stmt->bindValue(4, $c->getMensagem());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_contato desc";
        $stmt = ContatoDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_contato DESC LIMIT $ini, $reg";
        $stmt = ContatoDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    
    public function excluir(Contato $c){
        $sql = "DELETE FROM $this->tabela WHERE id_contato = ?";
        $stmt = ContatoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $c->getId_contato());
        return $stmt->execute();
    }
}
