<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Buscar Tutores</h2>
    </div>
</div>

<form method="get">
    <input type="hidden" name="link" value="19">
    <input type="hidden" name="acao" value="busca">
    <div class="form-row">
        <div class="form-group col-md-4">
            <input name="valor" type="text" class="form-control" id="inputValor" placeholder="Digite o nome ou sobrenome:"
                   required>
        </div>
        <div class="form-group col-md-4">
            <input type="submit" class="btn btn-secondary" value="Buscar">
        </div>
    </div>
</form>

<?php 
    if(filter_input(INPUT_GET, "acao") == "busca"){
?>
<div class="table-responsive-md">
    <table class="table">
        <thead>
            <tr class="table-info text-center">
                <th>Nome</th>
                <th>Sobrenome</th>
                <th>Email</th>
                <th>Foto</th>
            </tr>
        </thead>
        <?php
        include_once './model/TutorDAO.class.php';
        $tutorDAO = new tutorDAO();
        $valor = filter_input(INPUT_GET, "valor") ? filter_input(INPUT_GET, "valor") : "";
        $valor = "%$valor%";
        foreach ($tutorDAO->buscar($valor) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->nome_tutor ?></td>
                    <td><?= $res->sobrenome_tutor ?></td>
                    <td><?= $res->email_tutor ?></td>
                    <td><img class="img-thumbnail" src="<?='img/tutor/'.$res->foto?>" alt="Foto Tutor" width="80"></td>
                </tr>
            </tbody>
        <?php } ?>
    </table>
</div>
<?php
    }