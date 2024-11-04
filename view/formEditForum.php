<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Fórum</h2>
    </div>
</div>
<?php
include_once 'config/loader.php';
$f = new Forum();
$forumDAO = new ForumDAO();
$id_forum = filter_input(INPUT_GET, "id");

$f->setId_forum($id_forum);
$res = $forumDAO->listar($f);
?>
<form method="post" action="?link=85">
    <input type="hidden" name="id" value="<?= $id_forum ?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título</label>
            <input name="titulo" type="text" class="form-control" id="inputTitulo" placeholder="Digite o título:" value="<?= $res->titulo ?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputMsg">Comentario</label>
            <textarea name="mensagem" class="form-control" id="inputMsg"><?= $res->mensagem ?></textarea>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAula">Status Ativo</label>
            <select class="form-control" name="ativo_forum">
                <?php
                include_once './model/AulaDAO.class.php';
                $aulaDAO = new aulaDAO();
                if($res->ativo_forum == "S"){
                    print "<option selected value='S'>Sim</option>";
                    print "<option value='N'>Não</option>";
                }else{
                    print "<option value='S'>Sim</option>";
                    print "<option selected value='N'>Não</option>";
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
