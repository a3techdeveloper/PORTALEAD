<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Inserir Administrador</h2>
    </div>
</div>
<form method="post" action="?link=4">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputName">Nome</label>
            <input name="nome" type="text" class="form-control" id="inputName" placeholder="Digite o nome:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputLastName">Sobrenome</label>
            <input name="sobrenome" type="text" class="form-control" id="inputLastName" placeholder="Digite o sobrenome:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputMail">Email</label>
            <input name="email" type="email" class="form-control" id="inputMail" placeholder="Digite o email:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputPass">Senha</label>
            <input name="senha" type="password" class="form-control" id="inputPass" placeholder="Digite a senha:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Inserir">
        </div>
    </div>
</form>