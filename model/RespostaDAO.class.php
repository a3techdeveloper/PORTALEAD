<?php

include_once 'Conecta.class.php';

class RespostaDAO extends Conecta {

    private $tabela = "resposta";

    public function inserir(Resposta $resp) {
        $sql = "INSERT INTO $this->tabela(resposta,id_mural,id_aluno)VALUES(?,?,?)";
        $stmt = RespostaDAO::preparaSQL($sql);
        $stmt->bindValue(1, $resp->getResposta());
        $stmt->bindValue(2, $resp->getId_mural());
        $stmt->bindValue(3, $resp->getId_aluno());
        return $stmt->execute();
    }
    
    public function editarResposta(Resposta $resp){
        $sql = "UPDATE $this->tabela SET resposta = ? WHERE id_resposta = ?";
        $stmt = RespostaDAO::preparaSQL($sql);
        $stmt->bindValue(1, $resp->getResposta());
        $stmt->bindValue(2, $resp->getId_resposta());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "SELECT * FROM $this->tabela ORDER BY id_resposta DESC";
        $stmt = RespostaDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar($id_resposta) {
        $sql = "SELECT id_resposta, resposta FROM $this->tabela WHERE id_resposta = ?";
        $stmt = RespostaDAO::preparaSQL($sql);
        $stmt->bindValue(1, $id_resposta, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch();
    }

    public function listarRespostaMuralAluno() {
        $sql = "SELECT
                mural.titulo,
                mural.mensagem,
                resposta.id_mural,
                resposta.id_aluno,
                resposta.resposta,
                resposta.data_resposta,
                resposta.hora_resposta,
                resposta.id_resposta,
                resposta.id_aluno,
                aluno.aluno,
                aluno.ativo_aluno
                FROM mural
                JOIN resposta
                ON mural.id_mural = resposta.id_mural
                JOIN aluno
                ON aluno.id_aluno = resposta.id_aluno ORDER BY id_resposta DESC";
        $stmt = RespostaDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    
    public function excluirResposta(Resposta $resp){
        $sql = "DELETE FROM $this->tabela WHERE id_resposta = ?";
        $stmt = RespostaDAO::preparaSQL($sql);
        $stmt->bindValue(1, $resp->getId_resposta());
        return $stmt->execute();
    }

}
