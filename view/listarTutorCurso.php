<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-info text-center">Listar Cursos dos Tutores</h2>
    </div>
</div>

<div class="table-responsive-md">
    <table class="table">
        <thead>
            <tr class="table-info text-center">
                <th>Nome</th>
                <th>Sobrenome</th>
                <th>Curso</th>
                <th>#</th>
            </tr>
        </thead>
        <?php
        include_once 'config/loader.php';
        $tutorCursoDAO = new TutorCursoDAO();
        $pag = filter_input(INPUT_GET, "pag") ? filter_input(INPUT_GET, "pag") : 1;
        $_SESSION["pag"] = $pag;
        $result = $tutorCursoDAO->listarTutorCurso();
        $totalRegistros = count($result);
        $reg = 5;
        $ini = ($reg * $pag) - $reg;
        $numPaginas = ceil($totalRegistros / $reg);
        $maxPaginas = 3;
        foreach ($tutorCursoDAO->paginar($ini, $reg) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->nome_tutor ?></td>
                    <td><?= $res->sobrenome_tutor ?></td>
                    <td><?= $res->curso ?></td>
                    <td>
                        <a href="?link=38&id=<?= $res->id_tutor_curso ?>" onclick="return confirm('Confirmar exclusão?')">
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
                    <a class="page-link" href="?link=37&pag=1" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <?php
                for ($i = $pag - $maxPaginas; $i <= $pag - 1; $i++) {
                    if ($i >= 1) {
                        print "<li class='page-item'><a class='page-link' href='?link=37&pag=$i'>$i</a></li>";
                    }
                }
                echo "<li class='page-item active'><a class='page-link' href='?link=37&pag=$pag'>$pag<span class='sr-only'>(current)</span></a></li>";
                for ($i = $pag + 1; $i <= $pag + $maxPaginas; $i++) {
                    if ($i <= $numPaginas) {
                        print "<li class='page-item'><a class='page-link' href='?link=37&pag=$i'>$i</a></li>";
                    }
                }
                ?>
                <li class="page-item">
                    <a class="page-link" href="?link=37&pag=<?= $numPaginas ?>">
                        <span aria-hidden="true">&raquo;</span>
                    </a> 
                </li>
            </ul>
        </nav>
    </div>
</div>