<?php

include_once 'Conecta.class.php';

class MuralDAO extends Conecta {

    private $tabela = "mural";

    public function inserir(Mural $m) {
        $sql = "INSERT INTO $this->tabela(titulo,mensagem,id_aula)VALUES(?,?,?)";
        $stmt = MuralDAO::preparaSQL($sql);
        $stmt->bindValue(1, $m->getTitulo());
        $stmt->bindValue(2, $m->getMensagem());
        $stmt->bindValue(3, $m->getId_aula());
        return $stmt->execute();
    }

    public function editar(Mural $m) {
        $sql = "UPDATE $this->tabela SET titulo=?, mensagem=?, id_aula=? WHERE id_mural=?";
        $stmt = MuralDAO::preparaSQL($sql);
        $stmt->bindValue(1, $m->getTitulo());
        $stmt->bindValue(2, $m->getMensagem());
        $stmt->bindValue(3, $m->getId_aula());
        $stmt->bindValue(4, $m->getId_mural());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_mural DESC";
        $stmt = MuralDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Mural $m) {
        $sql = "SELECT * FROM $this->tabela WHERE id_mural=?";
        $stmt = MuralDAO::preparaSQL($sql);
        $stmt->bindValue(1, $m->getId_mural());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_mural DESC LIMIT $ini, $reg";
        $stmt = MuralDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listarMuralAulaCurso() {
        $sql = "SELECT
                mural.id_mural,
                mural.titulo,
                mural.data_mural,
                mural.hora_mural,
                mural.mensagem,
                mural.id_aula,
                aula.numero_aula,
                aula.titulo_aula,
                curso.curso
                FROM mural
                JOIN aula
                ON mural.id_aula = aula.id_aula
                JOIN curso 
                ON aula.id_curso = curso.id_curso ORDER BY id_mural DESC";
        $stmt = MuralDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Mural $co) {
        $sql = "DELETE FROM $this->tabela WHERE id_mural=?";
        $stmt = MuralDAO::preparaSQL($sql);
        $stmt->bindValue(1, $co->getId_mural());
        return $stmt->execute();
    }
}
