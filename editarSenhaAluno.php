<?php include_once 'cabecalho.php'; ?>
<!-- CABEÇALHO -->

<div class="container-fluid">
    <div class="row" style="margin-top: 100px">
        <div class="col">
            <h2 class="text-secondary text-center">Editar Senha</h2>
        </div>
    </div>
</div>
<?php 
include_once 'model/Aluno.class.php';
include_once 'model/AlunoDAO.class.php';

if (isset($_SESSION["logado"]) != true) {
    print "<script>alert('Sem permissão de acesso, efetue o login');location='login.php'</script>";
}

$al = new Aluno();
$alunoDAO = new AlunoDAO();
$id_aluno = filter_input(INPUT_GET, "id");

$al->setId_aluno($id_aluno);
$res = $alunoDAO->listar($al);
?>
<form method="post" action="controller/editarSenhaAlunoPage.php">
    <div class="form-row">
        <input type="hidden" name="id" value="<?= $res->id_aluno ?>">
        <input type="hidden" name="senha_recuperada" value="<?= $res->senha ?>">
        <div class="form-group col-md-6">
            <label for="inputSenha">Senha</label>
            <input name="senha_atual" type="password" class="form-control" id="inputSenha" placeholder="Digite a Senha Atual:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputNovaSenha">Nova Senha</label>
            <input name="nova_senha" type="password" class="form-control" id="inputNovaSenha" placeholder="Digite a Nova Senha:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCfNovaSenha">Confirmar Nova Senha</label>
            <input name="cf_nova_senha" type="password" class="form-control" id="inputCfNovaSenha" placeholder="Confirme a Nova Senha:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Editar Senha" onclick="return confirm('Confirmar edição da senha?')">
        </div>
    </div>
</form>


<!-- RODAPÉ -->
<?php
include_once 'rodape.php';
