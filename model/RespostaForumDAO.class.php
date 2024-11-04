<?php

include_once 'Conecta.class.php';

class RespostaForumDAO extends Conecta {

    private $tabela = "resposta_forum";

    public function inserir(RespostaForum $resp) {
        $sql = "insert into $this->tabela(resposta, id_forum, id_aluno)values(?,?,?)";
        $stmt = RespostaForumDAO::preparaSQL($sql);
        $stmt->bindValue(1, $resp->getResposta());
        $stmt->bindValue(2, $resp->getId_forum());
        $stmt->bindValue(3, $resp->getId_aluno());
        return $stmt->execute();
    }

    public function editarResposta(RespostaForum $resp) {
        $sql = "UPDATE $this->tabela SET resposta = ? WHERE id_resposta = ?";
        $stmt = RespostaForumDAO::preparaSQL($sql);
        $stmt->bindValue(1, $resp->getResposta());
        $stmt->bindValue(2, $resp->getId_resposta());
        return $stmt->execute();
    }

    public function listarTudo() {
        $sql = "select * from $this->tabela order by id_resposta desc";
        $stmt = RespostaForumDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function listar($id_resposta) {
        $sql = "SELECT id_resposta, resposta FROM $this->tabela WHERE id_resposta = ?";
        $stmt = RespostaForumDAO::preparaSQL($sql);
        $stmt->bindValue(1, $id_resposta, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch();
    }

    public function listarRespostaForumAluno() {
        $sql = "SELECT
                forum.titulo,
                forum.mensagem,
                resposta_forum.id_resposta,
                resposta_forum.resposta,
                resposta_forum.data_resposta,
                resposta_forum.hora_resposta,
                resposta_forum.id_forum,
                resposta_forum.id_aluno,
                aluno.aluno,
                aluno.ativo_aluno
                from forum
                JOIN resposta_forum
                ON forum.id_forum = resposta_forum.id_forum
                JOIN aluno
                ON aluno.id_aluno = resposta_forum.id_aluno
                ORDER BY id_resposta DESC;";
        $stmt = RespostaForumDAO::preparaSQL($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function excluirResposta(RespostaForum $resp) {
        $sql = "DELETE FROM $this->tabela WHERE id_resposta = ?";
        $stmt = RespostaForumDAO::preparaSQL($sql);
        $stmt->bindValue(1, $resp->getId_resposta());
        return $stmt->execute();
    }
}
