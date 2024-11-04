<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Administrador</h2>
    </div>
</div>
<?php 
    include_once 'config/loader.php';
    $adm = new Administrador();
    $admDAO = new AdministradorDAO();
    
    $id = filter_input(INPUT_GET, "id");
    $adm->setId_administrador($id);
    
    $res = $admDAO->listar($adm);
?>
<form method="post" action="?link=6">
    <input type="hidden" name="id" value="<?=$id?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputName">Nome</label>
            <input name="nome" type="text" class="form-control" id="inputName" placeholder="Digite o nome:" value="<?=$res->nome?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputLastName">Sobrenome</label>
            <input name="sobrenome" type="text" class="form-control" id="inputLastName" placeholder="Digite o sobrenome:" value="<?=$res->sobrenome?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputMail">Email</label>
            <input name="email" type="email" class="form-control" id="inputMail" placeholder="Digite o email:" value="<?=$res->email?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputPass">Senha</label>
            <input name="senha" type="password" class="form-control" id="inputPass" placeholder="Digite a senha:" value="<?=$res->senha?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Editar" onclick="return confirm('Confirmar edição?')">
        </div>
    </div>
</form>
