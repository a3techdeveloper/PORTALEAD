<?php

session_start();

include_once '../model/Aluno.class.php';
include_once '../model/AlunoDAO.class.php';

use PHPMailer\PHPMailer\PHPMailer;

$a = new Aluno();
$alunoDAO = new AlunoDAO();

$emailForm = filter_input(INPUT_POST, "email");
$verificaEmail = false;

foreach ($alunoDAO->listarTudo() as $dados) {
    if ($emailForm == $dados->email) {
        
        $_SESSION['aluno'] = $dados->aluno;
        $_SESSION['id_aluno'] = $dados->id_aluno;
        
        $verificaEmail = true;        
    }
}

function preparar_corpo_email(){
    ob_start();
    include_once '../view/template_email.php';
    $corpo = ob_get_contents();
    ob_end_clean();
    return $corpo;
}

if ($verificaEmail) {
        require '../lib/vendor/autoload.php';

        $email = new PHPMailer(true);
        $corpo = preparar_corpo_email();

        $email->CharSet = "UTF-8";
        $email->isSMTP();
        $email->Host = "smtp.gmail.com"; //sandbox.smtp.mailtrap.io
        $email->Port = 465; //2525
        $email->SMTPSecure = "ssl"; //tls
        $email->SMTPAuth = true;
        $email->Username = "andersonhenrique1978@gmail.com"; //423908a9d98094
        $email->Password = "fafkpnlwxuqbmbbu"; //f26d1d928489cc
        $email->setFrom("andersonhenrique1978@gmail.com", "Administrador da Plataforma");
        $email->addAddress($emailForm, $dados->aluno);
        $email->Subject = "Redefinição de Senha: {$_SESSION['aluno']}";
        $email->msgHTML($corpo);
        $email->send();
        
        print "<script>alert('Enviamos um email com a notificação de alteração de senha!');location='../login.php'</script>";
} else {
    print "<script>alert('Não existe cadastro com a conta de email informada!');location='../formEsqueceuSenha.php'</script>";
}