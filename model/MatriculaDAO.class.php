<?php

include_once 'Conecta.class.php';

class MatriculaDAO extends Conecta {
    
    private $tabela = "matricula";
    
    public function inserir(Matricula $ma){
        $sql = "insert into $this->tabela(id_curso, id_aluno)values(?,?)";
        $stmt = MatriculaDAO::preparaSQL($sql);
        $stmt->bindValue(1, $ma->getId_curso());
        $stmt->bindValue(2, $ma->getId_aluno());
        return $stmt->execute();
    }
    
    public function listarTudo(){
        $sql = "select * from $this->tabela order by id_matricula desc";
        $stmt = MatriculaDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    
    public function listar(Matricula $ma){
        $sql = "select * from $this->tabela where id_matricula=?";
        $stmt = MatriculaDAO::preparaSQL($sql);
        $stmt->bindValue(1, $ma->getId_matricula());
        $stmt->execute();
        return $stmt->fetch();
    }
    
    public function CursoMatriculado(Matricula $ma){
        $sql = "select * from $this->tabela where id_curso=? and id_aluno=?";
        $stmt = MatriculaDAO::preparaSQL($sql);
        $stmt->bindValue(1, $ma->getId_curso());
        $stmt->bindValue(2, $ma->getId_aluno());
        $stmt->execute();
        return $stmt->fetch();
    }

    public function listarCursosAluno(){
        $sql = "select
                matricula.id_matricula,
                matricula.id_curso,
                matricula.id_aluno,
                matricula.data_matricula,
                curso.curso,
                curso.descricao,
                curso.duracao,
                aluno.id_aluno,
                aluno.aluno,
                aluno.foto
                from matricula
                join curso 
                on matricula.id_curso = curso.id_curso
                join aluno 
                on matricula.id_aluno = aluno.id_aluno";
        $stmt = MatriculaDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    
    public function excluir(Matricula $ma){
        $sql = "delete from $this->tabela where id_matricula=?";
        $stmt = MatriculaDAO::preparaSQL($sql);
        $stmt->bindValue(1, $ma->getId_matricula());
        return $stmt->execute();
    }
    
}
