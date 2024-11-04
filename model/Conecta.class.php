<?php



abstract class Conecta {

    

    private static $conn;

    

    private static function pegarConexao(){

        if(is_null(self::$conn)){

            try {

                $dsn = "mysql:host=localhost;dbname=a3tech_ead;port=3307;charset=utf8";

                $user = "root";

                $pass = "";

                self::$conn = new PDO($dsn, $user, $pass);

                self::$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                self::$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

            } catch (PDOException $ex) {

                print "Código: ".$ex->getCode().

                      "Linha: ".$ex->getLine().

                      "Arquivo: ".$ex->getFile().

                      "Mensagem: ".$ex->getMessage();

            }

        }

        return self::$conn;

    }

    

    protected static function preparaSQL($sql){

        return self::pegarConexao()->prepare($sql);

    }

    

}

