<?php

include_once 'Conecta.class.php';

class TutorCursoDAO extends Conecta {

    private $tabela = "tutor_curso";

    public function inserir(TutorCurso $tc) {
        $sql = "insert into $this->tabela(id_curso,id_tutor)values(?,?)";
        $stmt = TutorCursoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $tc->getId_curso());
        $stmt->bindValue(2, $tc->getId_tutor());
        return $stmt->execute();
    }

    public function listarTutorCurso() {
        $sql = "select
                tutor_curso.id_tutor_curso,
                tutor.nome_tutor,
                tutor.sobrenome_tutor,
                tutor.email_tutor,
                tutor.telefone_tutor,
                tutor.foto,
                curso.id_curso,
                curso.curso
                from tutor_curso 
                join tutor
                on tutor_curso.id_tutor = tutor.id_tutor
                join curso
                on tutor_curso.id_curso = curso.id_curso order by id_tutor_curso desc";
        $stmt = TutorCursoDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function paginar($ini, $reg) {
        $sql = "SELECT 
                tutor_curso.id_tutor_curso,
                tutor.nome_tutor,
                tutor.sobrenome_tutor,
                tutor.email_tutor,
                tutor.foto,
                curso.id_curso,
                curso.curso
                FROM tutor_curso 
                JOIN tutor
                ON tutor_curso.id_tutor = tutor.id_tutor
                JOIN curso
                ON tutor_curso.id_curso = curso.id_curso ORDER BY id_tutor_curso DESC LIMIT $ini, $reg";
        $stmt = TutorCursoDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluir(TutorCurso $tc) {
        $sql = "delete from $this->tabela where id_tutor_curso=?";
        $stmt = TutorCursoDAO::preparaSQL($sql);
        $stmt->bindValue(1, $tc->getId_tutor_curso());
        return $stmt->execute();
    }
    
    public function excluirVinculos(){
        $sql = "TRUNCATE $this->tabela";
        $stmt = TutorCursoDAO::preparaSQL($sql);
        return $stmt->execute();
    }
}
