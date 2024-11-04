<?php

include_once 'Conecta.class.php';

class ExercicioDAO extends Conecta {

    private $tabela = "exercicio";

    public function inserir(Exercicio $ex) {
        $sql = "insert into $this->tabela(exercicio, id_aula)values(?,?)";
        $stmt = ExercicioDAO::preparaSQL($sql);
        $stmt->bindValue(1, $ex->getExercicio());
        $stmt->bindValue(2, $ex->getId_aula());
        return $stmt->execute();
    }

    public function editar(Exercicio $ex) {
        $sql = "update $this->tabela set exercicio=?, ativo_exercicio=?, id_aula=? 
            where id_exercicio=?";
        $stmt = ExercicioDAO::preparaSQL($sql);
        $stmt->bindValue(1, $ex->getExercicio());
        $stmt->bindValue(2, $ex->getAtivo_exercicio());
        $stmt->bindValue(3, $ex->getId_aula());
        $stmt->bindValue(4, $ex->getId_exercicio());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_exercicio asc";
        $stmt = ExercicioDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar(Exercicio $ex) {
        $sql = "select * from $this->tabela where id_exercicio=?";
        $stmt = ExercicioDAO::preparaSQL($sql);
        $stmt->bindValue(1, $ex->getId_exercicio());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_exercicio DESC LIMIT $ini, $reg";
        $stmt = Conecta::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(Exercicio $ex) {
        $sql = "delete from $this->tabela where id_exercicio=?";
        $stmt = ExercicioDAO::preparaSQL($sql);
        $stmt->bindValue(1, $ex->getId_exercicio());
        return $stmt->execute();
    }

}
