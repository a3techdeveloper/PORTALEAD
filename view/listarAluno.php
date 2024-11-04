<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Listar Alunos</h2>
    </div>
</div>

<div class="table-responsive-md">
    <table class="table">
        <thead>
            <tr class="table-dark text-center">
                <th>Nome Completo</th>
                <th>Telefone</th>
                <th>Cidade</th>
                <th>Email</th>
                <th>Foto</th>
                <th>#</th>
            </tr>
        </thead>
        <?php
        include_once 'config/loader.php';
        $alunoDAO = new AlunoDAO();
        $pag = filter_input(INPUT_GET, "pag") ? filter_input(INPUT_GET, "pag") : 1;
        $_SESSION["pag"] = $pag;
        $result = $alunoDAO->listarTudo();
        $totalRegistros = count($result);
        $reg = 5;
        $ini = ($reg * $pag) - $reg;
        $numPaginas = ceil($totalRegistros / $reg);
        $maxPaginas = 3;
        foreach ($alunoDAO->paginar($ini, $reg) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->aluno ?></td>
                    <td><?= $res->telefone ?></td>
                    <td><?= $res->cidade ?></td>
                    <td><?= $res->email ?></td>
                    <td><a href="?link=65&foto=<?= $res->foto ?>&id=<?= $res->id_aluno ?>" title="Editar Foto"><img class="img-thumbnail" src="<?= 'img/aluno/' . $res->foto ?>" alt="Foto Aluno" width="80"></a></td>
                    <td>
                        <a href="?link=62&id=<?= $res->id_aluno ?>">
                            <button class="btn btn-dark">
                                Editar
                            </button></a>

                        <a href="?link=64&foto=<?= $res->foto ?>&id=<?= $res->id_aluno ?>" onclick="return confirm('Confirmar exclusão?')">
                            <button class="btn btn-danger">
                                Excluir
                            </button></a>
                    </td>
                </tr>
            </tbody>
        <?php } ?>
    </table>
</div>

<div class="row">
    <div class="col-md-12">
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="?link=61&pag=1" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <?php
                for ($i = $pag - $maxPaginas; $i <= $pag - 1; $i++) {
                    if ($i >= 1) {
                        print "<li class='page-item'><a class='page-link' href='?link=61&pag=$i'>$i</a></li>";
                    }
                }
                echo "<li class='page-item active'><a class='page-link' href='?link=61&pag=$pag'>$pag<span class='sr-only'>(current)</span></a></li>";
                for ($i = $pag + 1; $i <= $pag + $maxPaginas; $i++) {
                    if ($i <= $numPaginas) {
                        print "<li class='page-item'><a class='page-link' href='?link=61&pag=$i'>$i</a></li>";
                    }
                }
                ?>
                <li class="page-item">
                    <a class="page-link" href="?link=61&pag=<?= $numPaginas ?>">
                        <span aria-hidden="true">&raquo;</span>
                    </a> 
                </li>
            </ul>
        </nav>
    </div>
</div>