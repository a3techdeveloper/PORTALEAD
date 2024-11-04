<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>       
        <style>
            #alert{
                background-color:rgba(63,138,133,.8);
                color: #ffffff;
                font-weight: bold;
                font-size: 18pt;
                border: none;
                text-align: center;
            }
            #alert img{
                float: left;
            }
            p{
                font-family: Verdana, Helvetica, sans-serif;
                font-size: 12pt;
            }
            button#btn{
                width: 180px;
                height: 50px;
                border: none;
                background-color: rgba(63,138,133,1);
                color: #ffffff;
                cursor: pointer;
                font-size: 16pt
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div id="alert">                
                <span>Redefinição da sua senha de acesso</span>
            </div>
            
            <div>
                <div>
                    <p>
                        Prezado(a) <b><?= $_SESSION['aluno']; ?></b>, <br>
                        Você solicitou um link para redefinição de sua senha de acesso. Para redefinir
                        sua senha clique no botão abaixo:
                    </p>
                </div>
            </div>
            
            <div style="margin-bottom: 20px;">
                <div>
                    <a href="https://a3techcursos.000webhostapp.com/formRedefinirSenha.php?id=<?=$_SESSION['id_aluno']?>" target="_blank" class="btn btn-danger">
                        <button id="btn">Redefinir Senha</button></a>
                </div>
            </div>
            
            <div>
                <div>
                    <p>
                        Este e-mail foi enviado automaticamente, por favor não responda.
                        Em caso de dúvidas, entre em contato com o administrador do Portal EAD no email:
                        <b>a3tech.ead@gmail.com</b>
                    </p>
                </div>
            </div>
        </div>
    </body>
</html>
