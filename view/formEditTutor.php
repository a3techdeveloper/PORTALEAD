<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Tutor</h2>
    </div>
</div>
<?php 
    include_once 'config/loader.php';
    $tutorDAO = new TutorDAO();
    $id = filter_input(INPUT_GET, "id");
    $res = $tutorDAO->listar($id);
?>
<form method="post" action="?link=13">
    <input type="hidden" name="id" value="<?=$id?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputName">Nome</label>
            <input name="nome" type="text" class="form-control" id="inputName" placeholder="Digite o nome:" value="<?=$res->nome_tutor?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputLastName">Sobrenome</label>
            <input name="sobrenome" type="text" class="form-control" id="inputLastName" placeholder="Digite o sobrenome:" value="<?=$res->sobrenome_tutor?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputMail">Email</label>
            <input name="email" type="email" class="form-control" id="inputMail" placeholder="Digite o email:" value="<?=$res->email_tutor?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputFone">Telefone Móvel</label>
            <input name="telefone" type="tel" class="form-control" id="inputFone" placeholder="Digite o DDD e Telefone (apenas dígitos):" value="<?=$res->telefone_tutor?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Editar" onclick="return confirm('Confirmar edição?')">
        </div>
    </div>
</form>
