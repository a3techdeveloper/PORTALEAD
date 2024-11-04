<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Listar Aulas</h2>
    </div>
</div>

<div class="table-responsive-md">
    <table class="table">
        <thead>
            <tr class="table-dark text-center">
                <th>Número</th>
                <th>Título</th>
                <th>Duração (h/a)</th>
                <th>Curso</th>
                <th>#</th>
            </tr>
        </thead>
        <?php
        include_once 'config/loader.php';
        $aulaDAO = new AulaDAO();
        $pag = filter_input(INPUT_GET, "pag") ? filter_input(INPUT_GET, "pag") : 1;
        $_SESSION["pag"] = $pag;
        $result = $aulaDAO->listarTudo();
        $totalRegistros = count($result);
        $reg = 5;
        $ini = ($reg * $pag) - $reg;
        $numPaginas = ceil($totalRegistros / $reg);
        $maxPaginas = 3;
        foreach ($aulaDAO->paginar($ini, $reg) as $res) {
            ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $res->numero_aula ?></td>
                    <td><?= $res->titulo_aula ?></td>
                    <td><?= $res->duracao_aula ?></td>
                    <td>
                        <?php
                        include_once './config/loader.php';
                        $cursoDAO = new CursoDAO();
                        foreach ($cursoDAO->listarTudo() as $c) {
                            if ($c->id_curso == $res->id_curso) {
                                print $c->curso;
                            }
                        }
                        ?>
                    </td>
                    <td>
                        <a href="?link=42&id=<?= $res->id_aula ?>">
                            <button class="btn btn-dark">
                                Editar
                            </button></a>

                        <a href="?link=44&id=<?= $res->id_aula ?>">
                            <button class="btn btn-secondary">
                                Mudar Status
                            </button></a>

                        <a href="?link=46&id=<?= $res->id_aula ?>" onclick="return confirm('Confirmar exclusão?')">
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
                    <a class="page-link" href="?link=41&pag=1" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <?php
                for ($i = $pag - $maxPaginas; $i <= $pag - 1; $i++) {
                    if ($i >= 1) {
                        print "<li class='page-item'><a class='page-link' href='?link=41&pag=$i'>$i</a></li>";
                    }
                }
                echo "<li class='page-item active'><a class='page-link' href='?link=41&pag=$pag'>$pag<span class='sr-only'>(current)</span></a></li>";
                for ($i = $pag + 1; $i <= $pag + $maxPaginas; $i++) {
                    if ($i <= $numPaginas) {
                        print "<li class='page-item'><a class='page-link' href='?link=41&pag=$i'>$i</a></li>";
                    }
                }
                ?>
                <li class="page-item">
                    <a class="page-link" href="?link=41&pag=<?= $numPaginas ?>">
                        <span aria-hidden="true">&raquo;</span>
                    </a> 
                </li>
            </ul>
        </nav>
    </div>
</div>
