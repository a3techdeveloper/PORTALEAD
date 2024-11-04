<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Buscar Conteúdos</h2>
    </div>
</div>

<form method="get">
    <input type="hidden" name="link" value="93">
    <input type="hidden" name="acao" value="busca">
    <div class="form-row">
        <div class="form-group col-md-4">
            <input name="valor" type="text" class="form-control" id="inputValor" placeholder="Digite o título ou nome do conteúdo:"
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
                <th>Título</th>
                <th>Conteúdo</th>
                <th>Curso</th>
            </tr>
        </thead>
        <?php
        include_once 'config/loader.php';
        $conteudoDAO = new ConteudoDAO();
        $valor = filter_input(INPUT_GET, "valor") ? filter_input(INPUT_GET, "valor") : "";
        $valor = "%$valor%";
        foreach ($conteudoDAO->buscar($valor) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->titulo ?></td>
                    <td><?= $res->caminho ?></td>
                    <td>
                    <?php 
                    $cursoDAO = new CursoDAO();
                    foreach ($cursoDAO->listarTudo() as $curso){
                        if($curso->id_curso == $res->id_curso){
                            print $curso->curso;
                        }
                    }
                    ?>
                    </td>
                </tr>
            </tbody>
        <?php } ?>
    </table>
</div>
<?php
    }