<?php include_once 'cabecalho.php'; ?>
<!-- CABEÇALHO -->

<div class="row" style="margin-top: 100px">
    <div class="offset-md-2 col-md-8">
        <h2 class="h2 text-secondary">Preencha o Formulário</h2>
        <hr/>
    </div>
</div>
<form method="post" action="controller/inserirAlunoPage.php" enctype="multipart/form-data">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCPF">CPF</label>
            <input name="cpf" type="text" class="form-control" id="inputCPF" placeholder="Digite o CPF:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputAluno">Nome Completo</label>
            <input name="aluno" type="text" class="form-control" id="inputAluno" placeholder="Digite o Nome Completo:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputProfissao">Profissão</label>
            <input name="profissao" type="text" class="form-control" id="inputProfissao" placeholder="Digite a sua Profissão:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputFone">Telefone Móvel</label>
            <input name="telefone" type="tel" class="form-control" id="inputFone" placeholder="Digite o DDD e Telefone (Somente dígitos):">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputDataNasc">Data Nascimento</label>
            <input name="data_nasc" type="date" class="form-control" id="inputDataNasc">
        </div>
        <div class="form-group col-md-6">
            <label for="inputEndereco">Endereço</label>
            <input name="endereco" type="text" class="form-control" id="inputEndereco" placeholder="Digite o seu endereço:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCidade">Cidade</label>
            <input name="cidade" type="text" class="form-control" id="inputCidade" placeholder="Digite sua cidade:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputBairro">Bairro</label>
            <input name="bairro" type="text" class="form-control" id="inputBairro" placeholder="Digite seu bairro:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputUF">U.F.</label>
            <select name="id_uf" class="form-control">
                <option selected></option>
                <?php 
                include_once 'model/UFDAO.class.php';
                $ufDAO = new UFDAO();
                foreach($ufDAO->listarTudo() as $uf){
                    $descricao = $uf->descricao;
                    print "<option value='$uf->id_uf'>$descricao</option>";
                }
                ?>
            </select>
        </div>
        <div class="form-group col-md-6">
            <label for="inputCEP">CEP</label>
            <input name="cep" type="text" class="form-control" id="inputCEP" placeholder="Digite seu CEP:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputFoto">Selecione uma Foto</label>
            <input name="foto" type="file" class="form-control" id="inputFoto">
        </div>
        <div class="form-group col-md-6">
            <label for="inputMail">Email</label>
            <input name="email" type="email" class="form-control" id="inputMail" placeholder="Digite o email:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputPass">Senha</label>
            <input name="senha" type="password" class="form-control" id="inputPass" placeholder="Digite a senha:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-dark" value="Inserir">
        </div>
    </div>
</form>

<!-- RODAPÉ -->
<?php include_once 'rodape.php';