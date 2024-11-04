<?php

include_once 'Conecta.class.php';

class InformacaoDAO extends Conecta {

    private $tabela = "informacao";

    public function inserir(Informacao $info) {
        $sql = "insert into $this->tabela(titulo,informacao,id_curso)values(?,?,?)";
        $stmt = InformacaoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $info->getTitulo());
        $stmt->bindValue(2, $info->getInformacao());
        $stmt->bindValue(3, $info->getId_curso());
        return $stmt->execute();
    }

    public function editar(Informacao $info) {
        $sql = "update $this->tabela set titulo=?,informacao=?,id_curso=? where id_informacao=?";
        $stmt = InformacaoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $info->getTitulo());
        $stmt->bindValue(2, $info->getInformacao());
        $stmt->bindValue(3, $info->getId_curso());
        $stmt->bindValue(4, $info->getId_informacao());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_informacao desc";
        $stmt = InformacaoDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Informacao $info) {
        $sql = "select * from $this->tabela where id_informacao=?";
        $stmt = InformacaoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $info->getId_informacao());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_informacao DESC LIMIT $ini, $reg";
        $stmt = InformacaoDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Informacao $info) {
        $sql = "delete from $this->tabela where id_informacao=?";
        $stmt = InformacaoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $info->getId_informacao());
        return $stmt->execute();
    }

}
