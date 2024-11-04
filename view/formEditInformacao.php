<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Informação</h2>
    </div>
</div>
<?php
include_once './model/Informacao.class.php';
include_once './model/InformacaoDAO.class.php';
$i = new Informacao();
$informacaoDAO = new InformacaoDAO();
$id_informacao = filter_input(INPUT_GET, "id");

$i->setId_informacao($id_informacao);
$res = $informacaoDAO->listar($i);
?>
<form method="post" action="?link=79">
    <input type="hidden" name="id" value="<?= $id_informacao ?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título</label>
            <input name="titulo" type="text" class="form-control" id="inputTitulo" placeholder="Digite o título:" value="<?= $res->titulo ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputInfo">Informação</label>
            <textarea name="informacao" class="form-control" id="inputInfo"><?= $res->informacao ?></textarea>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCurso">Selecione o Curso</label>
            <select class="form-control" name="id_curso" id="inputCurso">
                <?php
				include_once './model/CursoDAO.class.php';
                $cursoDAO = new CursoDAO();
                foreach ($cursoDAO->listarTudo() as $curso) {
                    if ($curso->id_curso == $res->id_curso) {
                        print "<option selected value='$curso->id_curso'>$curso->curso</option>";
                    } else {
                        print "<option value='$curso->id_curso'>$curso->curso</option>";
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
