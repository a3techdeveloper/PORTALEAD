<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Inserir Tutor</h2>
    </div>
</div>
<form method="post" action="?link=14" enctype="multipart/form-data">
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
            <label for="inputFone">Telefone Móvel</label>
            <input name="telefone" type="tel" class="form-control" id="inputFone" placeholder="Digite o DDD e Telefone (apenas dígitos):">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputFoto">Foto</label>
            <input name="foto" type="file" class="form-control" id="inputFoto">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Inserir">
        </div>
    </div>
</form>