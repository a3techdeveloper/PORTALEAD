<?php

include_once 'Conecta.class.php';

class TutorDAO extends Conecta {

    private $tabela = "tutor";

    public function inserir(Tutor $tutor) {
        $sql = "insert into $this->tabela(nome_tutor,sobrenome_tutor,email_tutor,telefone_tutor,foto)
            values(?,?,?,?,?)";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $tutor->getNome_tutor());
        $stmt->bindValue(2, $tutor->getSobrenome_tutor());
        $stmt->bindValue(3, $tutor->getEmail_tutor());
        $stmt->bindValue(4, $tutor->getTelefone_tutor());
        $stmt->bindValue(5, $tutor->getFoto());
        return $stmt->execute();
    }

    public function editar(Tutor $tutor) {
        $sql = "update $this->tabela set nome_tutor=?, sobrenome_tutor=?,
                email_tutor=?, telefone_tutor=? where id_tutor=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $tutor->getNome_tutor());
        $stmt->bindValue(2, $tutor->getSobrenome_tutor());
        $stmt->bindValue(3, $tutor->getEmail_tutor());
        $stmt->bindValue(4, $tutor->getTelefone_tutor());
        $stmt->bindValue(5, $tutor->getId_tutor());
        return $stmt->execute();
    }

    public function editar_foto(Tutor $tutor) {
        $sql = "update $this->tabela set foto=? 
            where id_tutor=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $tutor->getFoto());
        $stmt->bindValue(2, $tutor->getId_tutor());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_tutor desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar($id) {
        $sql = "select * from $this->tabela where id_tutor=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $id);
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_tutor DESC LIMIT $ini, $reg";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Tutor $tutor) {
        $sql = "delete from $this->tabela where id_tutor=?";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $tutor->getId_tutor());
        return $stmt->execute();
    }

    public function buscar($valor) {
        $sql = "select * from $this->tabela where nome_tutor like ? or sobrenome_tutor like ? order by id_tutor desc";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->bindValue(1, $valor);
        $stmt->bindValue(2, $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

}
