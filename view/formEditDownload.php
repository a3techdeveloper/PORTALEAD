<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Download</h2>
    </div>
</div>
<?php
include_once './model/Download.class.php';
include_once './model/DownloadDAO.class.php';
$download = new Download();
$downloadDAO = new DownloadDAO();
$id_download = filter_input(INPUT_GET, "id");

$download->setId_download($id_download);
$res = $downloadDAO->listar($download);
?>
<form method="post" action="?link=51" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?= $id_download ?>">
    <input type="hidden" name="caminho_antigo" value="<?= $res->caminho ?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título Download</label>
            <input name="titulo_download" type="text" class="form-control" id="inputTitulo" placeholder="Digite o título:" value="<?= $res->titulo_download ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputCaminho">Arquivo</label>
            <input name="caminho" type="file" class="form-control" id="inputCaminho">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAula">Selecione a Aula</label>
            <select class="form-control" name="id_aula">
                <?php
                include_once './model/AulaDAO.class.php';
                $aulaDAO = new aulaDAO();
                foreach ($aulaDAO->listarTudo() as $aula) {
                    if ($aula->id_aula == $res->id_aula) {
                        print "<option selected value='$aula->id_aula'>Aula $aula->numero_aula: $aula->titulo_aula</option>";
                    } else {
                        print "<option value='$aula->id_aula'>Aula $aula->numero_aula: $aula->titulo_aula</option>";
                    }
                }
                ?>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Editar" onclick="return confirm('Confirmar edição?')">
        </div>
    </div>
</form>
