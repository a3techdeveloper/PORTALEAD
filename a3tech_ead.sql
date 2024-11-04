-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29/08/2024 às 14:34
-- Versão do servidor: 10.5.20-MariaDB
-- Versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `a3tech_ead`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `sobrenome` varchar(60) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `data_cadastro` date DEFAULT curdate(),
  `hora_cadastro` time DEFAULT curtime(),
  `ativo_administrador` varchar(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nome`, `sobrenome`, `email`, `senha`, `data_cadastro`, `hora_cadastro`, `ativo_administrador`) VALUES
(1, 'Anderson', 'Henrique', 'andersonhenrique1978@gmail.com', 'ahrm1978@', '2021-05-11', '23:29:00', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `aluno` varchar(150) NOT NULL,
  `profissao` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `data_cad` date DEFAULT curdate(),
  `ativo_aluno` varchar(1) DEFAULT 'N',
  `id_uf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `cpf`, `aluno`, `profissao`, `telefone`, `data_nasc`, `endereco`, `cidade`, `bairro`, `cep`, `foto`, `email`, `senha`, `data_cad`, `ativo_aluno`, `id_uf`) VALUES
(18, '669.829.951-00', 'Anderson Henrique Maciel', 'Programador FullStack', '(79) 99831-8862', '1978-09-28', 'Quadra 5A Lote 18 Ap 102', 'Águas Lindas', 'Mansões Olinda', '72.915-615', 'IMG_20190525_175934.jpg', 'andersonhenrique7@gmail.com', 'anderson1978@', '2021-05-11', 'S', 9),
(29, '297.999.488-00', 'Robson Augusto Soares', 'Programador backend ', '(55) 99998-3619', '1982-11-21', 'Condomínio Ouro Vermelho 2', 'Brasilia ', '', '71.680-385', '20220903_124807.jpg', 'contatorobsonsoares82@gmail.com', '36295110', '2022-09-12', 'N', 7),
(35, '014.179.031-80', 'Cleiton da Costa Sousa ', 'ADS', '(61) 99986-3495', '1988-04-09', 'RUA 34 N ED REAL FLAT ', 'Brasília', 'Águas Claras', '71.916-750', 'Captura de tela 2023-12-03 154338.png', 'cleitonsousamoreno@gmail.com', '123456', '2023-12-03', 'N', 7),
(37, '022.350.241-30', 'Rodrigo Marx', 'Horus Engenharia', '(61) 99317-3305', '1986-05-05', '26, 09', 'Valparaiso', 'Valparaiso II', '72.870', 'inbound4685370404912991500.jpg', 'marxdigo@gmail.com', '123456', '2023-12-19', 'N', 9),
(42, '036.258.111-89', 'Marcos Flavio da Silva ', 'Técnico de informática ', '(61) 99347-6611', '1992-08-15', 'Qr312 cojunto 1 casa 22', 'Distrito Federal', 'Samambaia sul', '72.308-101', '20220928_125029~2.jpg', 'marcos.flavio20@yahoo.com.br', 'p@ssw0rd', '2023-12-26', 'N', 7),
(43, '100.446.891-10', 'João Gabriel Assunção Silva ', 'Estudante', '(61) 99439-8348', '2008-03-15', 'Q 27, Lt 26, Conj B,St 3, casa D-4', 'Águas Lindas de Goiás ', 'Parque da Barragem ', '72.910-277', 'baixados.jpg', 'joaogabriel.assuncao2008@gmail.com', 'jgabrielG15', '2024-05-25', 'N', 9),
(45, '000.000.000-00', 'Victor Gabriel Rodrigues ', 'Estudante', '(61) 99519-6738', '2011-07-15', 'Casa 11 Conjunto 8 QR 519', 'Samambaia Sul', '', '', '17190930112004541672868850018535.jpg', 'vglourenco21@gmail.com', 'victorg1507', '2024-06-22', 'N', 7),
(47, '000.000.000-00', 'kauã souza da silva', 'estudante', '(61) 98149-9774', '2010-10-30', 'mansões village lote 13 rua 27 ', 'águas lindas de Goias', 'mansões vilage', '00.000-000', '3135768.png', 'kaua67234@gmail.com', '123456', '2024-06-25', 'S', 9),
(49, '000.000.000-00', 'kessya dos anjos santos', 'estudante', '(61) 99340-7384', '2005-07-23', '', 'águas lindas de goias', 'perola 2', '00.000-00', 'images.jpg', 'tik8tok77020@gmail.com', '2307', '2024-06-26', 'N', 9),
(50, '071.657.241-92', 'Gustavo Vieira dos Santos', 'Estudante', '(61) 99190-3394', '2006-10-24', 'Quadra 53 Lote 32', 'Águas Lindas', 'Jardim Pérola II', '72.911-313', 'perfil_vazio-2.png', 'gustavoviera10@gmail.com', '1234', '2024-07-11', 'N', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `aula`
--

CREATE TABLE `aula` (
  `id_aula` int(11) NOT NULL,
  `numero_aula` int(11) NOT NULL,
  `titulo_aula` varchar(150) NOT NULL,
  `duracao_aula` varchar(10) NOT NULL,
  `embed_youtube` varchar(100) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `ativo_aula` varchar(1) DEFAULT 'S',
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `aula`
--

INSERT INTO `aula` (`id_aula`, `numero_aula`, `titulo_aula`, `duracao_aula`, `embed_youtube`, `descricao`, `ativo_aula`, `id_curso`) VALUES
(14, 1, 'Introdução a Linguagem PHP', '00:09:05', 'https://www.youtube.com/embed/w1TswKSHGJU', 'O que é PHP, Qual a diferença do PHP e outra Linguagem, PHP ou CGI, Ambiente de Desenvolvimento, O que pode ser feito com PHP, Quais bancos de dados posso utilizar, Como surgiu o PHP, Principais caraterísticas do PHP', 'S', 12),
(15, 2, 'Preparando o Ambiente do PHP', '00:14:33', 'https://www.youtube.com/embed/eUTpEFb7vqg', 'Instalando e Testando o WampServer, Notepad++ e Netbeans IDE para PHP', 'S', 12),
(18, 3, 'Projeto PHP no Netbeans e Ambientes Virtuais', '00:22:33', 'https://www.youtube.com/embed/oO44Betp5Vk', 'Vamos configurar nosso projeto no netbeans, utilizando a pasta www do servidor local wamp e criar nosso ambiente virtual para ter acesso ao nosso projeto de forma direta no navegador', 'S', 12),
(19, 4, 'Revisão Criando Ambiente Virtual', '00:14:26', 'https://www.youtube.com/embed/E30vac6bYs8', 'Revisão sobre como criar ambientes virtuais no wamp configurando os arquivos httpd.conf e httpd-vhost, e alterando o arquivo host do ambiente windows', 'S', 12),
(20, 5, 'Criando um arquivo PHP, Delimitadores do Código, Comentários e Documentação', '00:12:58', 'https://www.youtube.com/embed/o-MHgt8tstQ', 'Criando nosso primeiro arquivo em php, Delimitando o código php, Inserindo comentários e documentando o código', 'S', 12),
(21, 6, 'Comandos de Saída, Variáveis', '00:28:11', 'https://www.youtube.com/embed/0JOwIM6w6AA', 'Aprendendo os comandos de saída do php (echo, print, var_dump() e print_r()), Declarando variáveis e atribuindo valores, variáveis variantes, referência de variáveis', 'S', 12),
(22, 7, 'Tipos de Dados', '00:24:32', 'https://www.youtube.com/embed/GU-FyknyDD0', 'Vamos estudar os tipos de dados existentes na linguagem PHP', 'S', 12),
(23, 8, 'Constantes e Requisição de Arquivo', '00:17:19', 'https://www.youtube.com/embed/S9VDKkyTFZ8', 'Constantes (Definir e Utilizar), Requisição de Arquivos (Include e Require)', 'S', 12),
(24, 9, 'Manipuladores (Declarar e Utilizar Funções)', '00:34:01', 'https://www.youtube.com/embed/iJjv9Xi4nHE', 'Funções (Declarar e Utilizar), Escopo de Variáveis (Global e Local), Variável Estática, Passagem de Parâmetro (by value, by reference), Parâmetro com Valor Default, Argumentos Variáveis (func_get_args(), func_num_args()), Recursividade', 'S', 12),
(25, 10, 'Strings (Funções que manipulam strings) Parte 01', '00:26:06', 'https://www.youtube.com/embed/PPZabzQ1w7w', 'Declarando e Exibindo Valores em strings (aspas simples e aspas duplas), Concatenação, Caracteres de Escape, Conversão, Transformação, entre outras funções', 'S', 12),
(26, 11, 'Strings (Funções que manipulam strings) Parte 02', '00:23:20', 'https://www.youtube.com/embed/AxpltoBf8v4', 'Funçoes que manipulam strings (str_repeat, strlen, str_replace, strpos), Criptografia e segurança com password hash, sha1 e md5', 'S', 12),
(27, 12, 'Números (Funções que manipulam números)', '00:18:06', 'https://www.youtube.com/embed/FEdiJrzo-kk', 'Funçoes que manipulam números (number_format(), funções matemáticas (pi, sqrt, pow, rand, ceil, bin2hex, bindec,hex2bin, hexdec, decbin, decoct, dechex))', 'S', 12),
(31, 13, 'Arrays Unidimensionais (Vetores)', '00:29:00', 'https://www.youtube.com/embed/E06m-k9Z634', 'Criando um array (função array()), Acessando Elementos de um Array, Criando um Array Associativo, Acessando Elementos de um Array Associativo, Criando Iterações em Arrays (Percorrento Elementos com foreach()), Realizando Operações nos Elementos do Array', 'S', 12),
(32, 14, 'Arrays Bidimensionais (Matrizes)', '00:51:07', 'https://www.youtube.com/embed/9ajcLUKvy8k', 'Criando Arrays Bidimensionais, Iteração sobre Matrizes, Funções que Manipulam Arrays (array_push, array_pop, array_shift, array_unshift, array_pad, array_reverse, array_merge, array_keys, array_values, array_slice, count, in_array, sort(), asort(), rsort(), arsort(), ksort(), krsort(), explode, implode', 'S', 12),
(44, 15, 'Manipulando Data e Hora', '00:23:49', 'https://www.youtube.com/embed/T1YeD3jvtc8', 'Manipulando informações regionais (Data e Hora), Trabalhando com a função date( ), Parâmetro Day, Month, Trabalhando com Timezone, utilizando as funções date_default_timezone_set( ), date_default_timezone_get( ), Trabalhando com o objeto DateTime, Formatando date com date_format( )', 'S', 12),
(45, 16, 'Manipulando Arquivo e Diretório (Parte 1)', '00:31:05', 'https://www.youtube.com/embed/LTwViAaagTk', 'Utilizando Formulário HTML com os atributos method, action e enctype, Criando Arquivo PHP para pegar o Arquivo, Utilizando array superglobal $_FILES[ ][ ], Pegando nome, tamanho e tipo de extensão (mimetype), Tratamento com funções: is_file( ), in_array( ), Movendo Arquivo para Diretório com move_uploaded_file( ), verificando se arquivo/diretório existe com função file_exists( )', 'S', 12),
(46, 17, 'Manipulando Arquivo e Diretório (Parte 2)', '00:53:12', 'https://www.youtube.com/embed/Ax_RWqIgk4Y', 'Trabalhando com função unlink( ) apagando arquivos, Abrindo arquivos com fopne( ), Verificando se ponteiro está no final do Arquivo feof( ), Lendo linhas de Arquivo com fgets( ), fechando Arquivo com fclose( ), Gravando dados em Arquivo com fwrite( ) e file_put_contents( ), Lendo dados em Arquivo com file_get_contents( ) e file( ), Copiando Arquivo com copy( ), Criando diretório com mkdir( ), Verificando diretório com is_dir( ), Renomeando Diretório e Arquivo com rename( ), Retornando diretório corrente getcwd( ), Removendo Diretório com rmdir( ), Abrindo Diretório, Lendo Conteúdo e Fechando diretório com opendir( ), readdir( ) e closedir( )', 'S', 12),
(47, 18, 'Persistência de Dados (Cookies e Session)', '00:32:54', 'https://www.youtube.com/embed/7L8kjpY45Ts', 'Criando cookies com função setcookie( ), recuperando valores de cookies com filter_input( ), Criando cookie com tempo expiração, Excluindo cookies, Inicializando sessões com session_start( ), criando sessões com array superglobal $_SESSION[ ], Recuperando valores de sessões, Apagando e Destruindo sessões com session_unset( ), session_destroy( )', 'S', 12),
(48, 19, 'Modelagem de Dados (MySQL SGDBR)', '00:31:47', 'https://www.youtube.com/embed/RkbQAfdUykQ', 'Modelando o Banco de Dados, Criando banco de dados (a3tech_php), Criando Tabelas (perfil_usuario, usuario), Populando a Tabela (perfil_usuario), Entendendo Relacionamento entre Tabelas', 'S', 12),
(49, 20, 'Modelagem de Dados 2 (MySQL SGDBR)', '00:10:52', 'https://www.youtube.com/embed/PpsJIeDXQoE', 'Entendendo o Mecanismo MyISAM e innoDB, Alterando o Tipo de Mecanismo para innoDB das Tabelas, Criando o Relacionamento entre Chave Estrangeira e Primária, Acessando o Modo Gráfico, Populando a Tabela Usuário (INSERT INTO)', 'S', 12),
(50, 21, 'Sistema de Login (Parte 1) - Criando o Index', '00:27:52', 'https://www.youtube.com/embed/xlmbUcKEY4U', 'Nesta aula iniciaremos nosso projeto final, Criando o Formulário de Login com HTML, CSS e Bootstrap, Utilizando Ícones (FrontEnd)', 'S', 12),
(51, 22, 'Sistema de Login (Parte 2) - Criando o Logar', '00:29:03', 'https://www.youtube.com/embed/Q4Rc3T7b65E', 'Criando arquivo de Conexão com o Servidor com mysqli_connect( ) e mysqli_select_db( ), Criando o arquivo Logar, Aprendendo a fazer tratamentos com função die( ), Verificando se autenticou com função mysqli_num_rows( ) (BackEnd)', 'S', 12),
(52, 23, 'Sistema de Login (Parte 3) - Encerrando o Logar e Painel Principal', '00:19:51', 'https://www.youtube.com/embed/8XbWKb2SkRQ', 'Criando sessões para armazenar (nome, ativo e autenticado), $_SESSION[ ], Inicializando sessões com session_start( ), armazenando em array associativo com mysqli_fetch_assoc( ), Verificando se conta do usuário está ativa, Redirecionando URL com função header( ), Criando Página Principal do Sistema (FrontEnd e BackEnd)', 'S', 12),
(53, 24, 'Sistema de Login (Parte 4) - Encerrando o Painel Principal e Logout', '00:42:59', 'https://www.youtube.com/embed/ujZXyKslnTM', 'Verificando se usuário não está autenticado, Utilizando o Bootstrap para criar um Navbar, Utilizando JQuery para inserir Animação em SubMenus, Personalizando o Navbar, Incorporando JS na TAG Body, Criar link para Logout, Inserindo Mensagem de Alerta no link Sair, Apagando e Destruindo Sessões do Usuário, Exibindo nome do usuário Logado no Painel, Inserindo ícone no botão Sair', 'S', 12),
(54, 25, 'Tratamento de Variáveis (Sanitize e Validate)', '00:31:46', 'https://www.youtube.com/embed/JGXymWr77Pc', 'Trabalhando com filtros utilizando função filter_var( ), Limpando os dados com FILTER_SANITIZE (string, int, email, url, float), Validandos os dados com FILTER_VALIDATE (int, email, url, float, boolean, ip (Tratando IPV4 e IPV6) com FILTER_FLAG_IPV4 e FILTER_FLAG_IPV6)', 'S', 12),
(55, 26, 'Segurança contra SQLInjection e XSS (Cross Site Scripting)', '00:36:35', 'https://www.youtube.com/embed/uRAEDVALslk', 'Segurança do Sistema contra: ataques SqlInjection com função mysqli_escape_string($link, $var), Mostrando 3 Tipos de Ataques SQL Injection, ataques XSS (Cross Site Scripting) com função htmlspecialchars($var), Mostrando 2 Tipos de Ataques XSS, Criando função que nos protege dos dois tipos de Ataques', 'S', 12),
(56, 27, 'Sistema CRUD - Create, Read, Update e Delete (Parte 1)', '00:46:52', 'https://www.youtube.com/embed/qR4N1pru2oU', 'Utilizando o banco de dados a3tech_php. Modelando a Tabela Pessoa, Definindo Campos, Tamanho, Tipo de Dados e Restrições. No projeto final criar o módulo pessoa (Inserir, Listar, Editar, Deletar e Buscar), Utilizando requisição de arquivos para separar (header, main e footer) na página principal, Criando sistema de links dinâmicos, Modelando o formulário de Cadastro, Utilizando ícones do Bootstrap', 'S', 12),
(57, 28, 'Sistema CRUD - Create, Read, Update e Delete (Parte 2)', '00:46:22', 'https://www.youtube.com/embed/LWwPHcWG4qY', 'Criando o arquivo responsável pelo cadastro, Criando nossa página de Listagem, Criando a rotina para selecionar todos os registros, Tratando dados recebidos, Formatando dados da tabela, Criando botões de Edição e Exclusão', 'S', 12),
(58, 29, 'Sistema CRUD - Create, Read, Update e Delete (Parte 3)', '00:47:49', 'https://www.youtube.com/embed/sheaDWjsjCg', 'Criando o arquivo responsável pela exclusão, Tratando com caixa de confirmação, Criando a página com formulário de Edição, Passando e Recuperando parâmetro da URL, Criando arquivo responsável pela edição, Finalizando CRUD, Última Aula do Curso?', 'S', 12),
(59, 1, 'PHP 7 OO Introdução', '00:09:28', 'https://www.youtube.com/embed/BY81DB5_TLY', 'Diferença entre programação estruturada e orientado a objetos, POO (Dificuldades e Benefícios), Chip Central da OO, Conceitos de Orientação a Objetos (POO, Objetivo, Como era? Quem criou? Programação Estruturada -> Programação Modular -> OO), Vantagens (Confiável, Oportuno, Manutenível, Extensível, Reutilizável, Natural)', 'N', 12),
(60, 2, 'Classes e Objetos, Atributos e Métodos', '00:27:35', 'https://www.youtube.com/embed/_x12xMF99-0', 'Conceito de Classe, Criando uma Classe, Conceito de Atributos, Criando Atributos, Conceito de Métodos, Criando Métodos (Implementando Métodos), Instanciando uma Classe (Criando Objeto), Passando Valores para os Atributos, Acessando os Métodos', 'S', NULL),
(61, 3, 'Construtor, Destrutor, Classe SPL', '00:31:46', 'https://www.youtube.com/embed/NQj8bwQOBSQ', 'Criando método Construtor (__construct( ) ), método Destrutor (__destruct( ) ), Modelando a classe Pessoa, Trabalhando com a classe SPL - Standard PHP LIbrary (Carregando Classes Dinamicamente), Implementando os Métodos da classe Pessoa, Instanciando o objeto da classe Pessoa, Utilizando construtor (estado inicial do objeto), Utilizando os métodos da classe Pessoa', 'S', NULL),
(62, 4, 'Conceito de Herança, Métodos Sobrescritos (override), Polimorfismo', '00:40:29', 'https://www.youtube.com/embed/HU1YN_1sn7M', 'Entendendo Herança, Criando classe-pai Conta e uma classe-filha ContaCorrente (Utilizando operador extends), Sobrescrita de métodos (override), Polimorfismo (mesmo método com comportamento diferente), Testando o objeto da classe ContaCorrente', 'S', NULL),
(63, 5, 'Classe Abstrata (abstração), Método Abstrato, Classe e Método Final', '00:24:55', 'https://www.youtube.com/embed/5xlyiLdbHZM', 'Conceito de Abstração (Classe Abstrata), declarando classe com abstract,  Método Abstrato (métodos declarados na classe-pai, serão somente implementados na classe-filha), Declarando o método transferir( ) na classe Conta, Implementando o método transferir na classe ContaCorrente, Criando duas contas e transferindo dinheiro entre elas, Classe Final e Método Final', 'S', NULL),
(64, 6, 'Encapsulamento, Modificadores de Acesso (Public, Protected, Private), Constantes de Classe', '00:32:22', 'https://www.youtube.com/embed/B9i-wuhv3I4', 'Encapsulamento para proteger os membros da classe, Modificadores de Acesso (Modos de Visibilidade: Public, Protected, Private), a Acessibilidade dos atributos e métodos da classe. Constantes de Classe (Acessando internamente e externamente)', 'S', NULL),
(65, 7, 'Atributo Estático, Método Estático, Interceptadores (__set( ), __get( ))', '00:36:24', 'https://www.youtube.com/embed/ECxQwSe2pHQ', 'Declarando atributo estático, utilizando o operador self::, Declarando método estático, Acessando métodos estáticos com a sintaxe Classe::Metodo, Interceptadores __set( ), interceptando a atribuição de valores, __get, interceptando a requisição de valores', 'S', NULL),
(66, 8, 'Interceptadores __call( ), __callStatic( ), __toString( ) e __clone( ), Replicando e Clonando Objetos', '00:32:39', 'https://www.youtube.com/embed/bfNpleI4XzY', 'Trabalhando com o interceptador __call( ) e __callStatic( ), quando chamamos métodos que não existem, interceptador __toString( ), imprimir objetos com echo e print, Replicando objetos e Clonando objetos com o interceptador __clone( )', 'S', NULL),
(67, 9, 'Interface (Criando uma interface, utilizando a interface implementando em uma Classe)', '00:27:04', 'https://www.youtube.com/embed/goJBv6RhhBg', 'Criando uma Interface, declarando os métodos na Interface, Utilizando a Interface implementando em uma Classe', 'S', NULL),
(68, 10, 'MER (Modelo Entidade-Relacional) Associação, Agregação e Composição', '00:59:26', 'https://www.youtube.com/embed/5SIQxlSk7Uc', 'MER (Modelo Entidade-Relacional), Como os objetos podem se comunicar entre si, Associação (Criando a classe Produto e Fornecedor), Agregação (Criando a classe Curso e Aluno), Composição (Criando a classe DadosPessoais e DadosLocalidade) Trabalhando com Delegação de Métodos', 'S', NULL),
(69, 11, 'PDO (PHP Data Object) - Criando um CRUD (Create, Read, Update, Delete) Parte 1', '00:30:58', 'https://www.youtube.com/embed/AmTvVKfK2c0', 'Conhecendo a Classe PDO e seus principais Métodos, Utilizando o banco de dados a3tech_php, Modelando a classe Conecta, declarando atributo estático $conn e os métodos estáticos pegarConexao( ) e preparaSQL( ), Fazendo tratamento com try{ }catch( ){ }, Modelando a classe Pessoa e a classe PessoaDAO. Modelo DAO (Data Access Object), classe que provê o acesso aos dados e os métodos para manipular a tabela do Banco de Dados com os métodos (inserir( ), atualizar( ), selecionarTudo( ), selecionarPeloID( ), deletarPeloID( )), Conhecendo o atributo bindValue( ) e o método execute( )', 'S', NULL),
(70, 12, 'PDO (PHP Data Object) - Criando um CRUD (Create, Read, Update, Delete) Parte 2', '00:40:33', 'https://www.youtube.com/embed/G-jjc63u40c', 'Conhecendo a Classe PDO e seus principais Métodos, Modelando a classe PessoaDAO. Modelo DAO (Data Access Object), classe que provê o acesso aos dados e os métodos para manipular a tabela do Banco de Dados com os métodos (selecionarTudo( ), selecionarPeloID( ), deletarPeloID( )), Utilizando o Bootstrap, Bootstrap Icons, JQuery, Criando a Tela de Cadastro', 'S', NULL),
(71, 13, 'PDO (PHP Data Object) - Criando um CRUD (Create, Read, Update, Delete) Parte 3', '00:41:42', 'https://www.youtube.com/embed/2a_14crJDuc', 'Conhecendo a Classe PDO e seus principais Métodos, Utilizando o Bootstrap, Bootstrap Icons, JQuery, Criando o arquivo inserir, Criando link e Página Listar Pessoas, Criando a Tabela e Selecionando os Registros, Criando os botões Editar e Excluir', 'S', NULL),
(72, 14, 'PDO (PHP Data Object) - Criando um CRUD (Create, Read, Update, Delete) Parte 4', '00:37:29', 'https://www.youtube.com/embed/tGhZ8GzOVjU', 'Conhecendo a Classe PDO e seus principais Métodos, Utilizando o Bootstrap, Bootstrap Icons, JQuery, Criando os Links Excluir e Editar, Passando parâmetro id nos Links, Criando o arquivo deletar, Criando o Formulário de Edição, Selecionando o Registro pelo ID e Inserindo Informações no Formulário, Criando o arquivo editar', 'S', NULL),
(73, 15, 'PDO (PHP Data Object) - Sistema de Login Parte 1', '00:25:02', 'https://www.youtube.com/embed/F94wBpo3jQc', 'Trabalhando com o banco de dados a3tech_php nas tabelas (usuario, perfil_usuario), Modelando as Classes (Perfil Usuario e PerfilUsuarioDAO com o método selecionarTudo( )). Modelando as classes (Usuario e UsuarioDAO com os métodos logar( ) e deslogar( )), Criando a página de login', 'S', NULL),
(74, 16, 'PDO (PHP Data Object) - Sistema de Login Parte 2', '00:32:07', 'https://www.youtube.com/embed/hvrS6lKT2OI', 'Criando o arquivo autenticar, Fazendo mais tratamentos no método logar( ) da classe UsuarioDAO, Implementando e fazendo os tratamentos no arquivo autenticar, criando o arquivo principal, guardando informações nas sessões: autenticado e usuario, retornando nome do usuario que está logado, criando o link sair, passando parâmetro e verificando se usuario clicou no link sair, verificando se usuario não está logado, implementando o método estático deslogar, Finalizando o curso', 'S', NULL),
(75, 1, 'Introdução ao MySQL', '00:12:31', 'https://www.youtube.com/embed/m7E7xpbGyTg', 'Introdução ao MySQL, Diferença de Dado, Informação e Conhecimento, O que é Banco de Dados, Banco de Dados Relacionais e SGDB (Sistema de Gerenciamento de Banco de Dados), O MySQL (História), Gráfico Mostrando a Arquitetura, A Linguagem SQL', 'S', 15),
(76, 2, 'Instalação e Configuração do MySQL 8.0 Community Edition', '00:15:38', 'https://www.youtube.com/embed/YN7eNXmt-v4', 'Instalação e Configuração do MySQL Server 8.0 Community Edition', 'S', 15),
(77, 3, 'Modelagem de Dados (Campo, Registro, Tabela e Índice)', '00:12:06', 'https://www.youtube.com/embed/na28L6orFZ8', 'Modelagem de Dados, O que é Campo, O que são registros, O que é uma Tabela e O que são Índices, Chave, Relacionamento e Cardinalidade (primária, candidata e estrangeira), O que é Cardinalidade, Os 3 Tipos de Cardinalidade', 'S', 15),
(78, 4, 'Criação, Uso e Remoção de Banco de Dados', '00:32:51', 'https://www.youtube.com/embed/jZh8bzEPUJk', 'Utilizando o MySQL Command Line Client, Criando um Banco de Dados, Selecionando  um Banco de Dados, Removendo um Banco de Dados, Criando um Usuário, Conceder Privilégios com grant e Revogar Privilégios com revoke, Controle de Acesso, Exibindo Banco de Dados com show databases, Iniciando um Projeto, Entendendo a Lógica do Projeto', 'S', 15),
(79, 5, 'Show Tables, Desc ou Describe, Create Table', '00:43:12', 'https://www.youtube.com/embed/atnrzmn5TcY', 'Exibindo Tabelas de um Banco com show tables, Exibindo Detalhes de uma Tabela com Desc ou Describe, Criando Tabelas com create table. Criando o Banco comercial, Criando a Tabela comclien, Criando a Tabela comforne, Criando a Tabela comvende, Criando a Tabela comprodu, Criando a Tabela comvenda e Criando a Tabela comivenda segundo o Nosso Projeto ', 'S', 15),
(80, 6, 'Show Databases, Use, Create Table, Show Tables, Desc ou Describe, Alter Table, Add Constraints', '00:40:04', 'https://www.youtube.com/embed/HA8y3FOI9Jo', 'Mostrando Bancos de Dados,  Selecionando Banco de Dados, Exibindo Tabelas de um Banco de Dados, Alterando Tabela (Removendo Coluna e Adicionando Coluna), Criando a Tabela comvendas e Excluindo a Tabela comvendas, Alterando Tabelas Criando Relacionamento entre Tabelas (Foreign Key)', 'S', 15),
(81, 7, 'Trabalhando com MySQL Workbench 8.0 CE e Diagrama de Classe', '00:29:58', 'https://www.youtube.com/embed/z6Nj5PQ4TLA', 'Conhecendo o MySQL Workbench 8.0, Configurando Nova Conexão, Visualizando Banco de Dados, Tabelas e Colunas, Visualizando Índices, Criando Relacionamento entre a Tabela comivenda  comprodu (Adicionando Constraint Foreign Key), Criando um Diagrama Entidade Relacionamento, Alterando a Tabela comclien (Adicionando as Colunas (c_cidaclien, c_estaclien)', 'S', 15),
(82, 8, 'Privilégios de Usuário (grant e revoke), Insert Into (Inserção de Dados), Update Set (Alteração de Dados)', '01:09:09', 'https://www.youtube.com/embed/0pXzTF2kFXY', 'Criando e Manipulando Usuários (create user), Conceder Privilégios (grant e revoke), 6 Níveis de Privilégios (Global, Bancos de Dados, Tabelas, Colunas (select, insert, update), Stored Routine, Proxy User), Inserção de Dados (insert into), Alteração de Dados (update set)', 'S', 15),
(83, 9, 'Exercícios Parte 1', '00:35:46', 'https://www.youtube.com/embed/4vCu3-rHOAc', 'Criar um Banco de Dados (loja), Selecionar o Banco de Dados que foi criado, Criar uma tabela nesse Banco de Dados (lojaclien), Inserir 10 registros na tabela lojaclien', 'S', 15),
(84, 10, 'Delete From, Delete From Where, Truncate, Select From, Select From Where', '00:42:32', 'https://www.youtube.com/embed/wbZ4XdqqnDg', 'Comandos (show databases, use, show tables, describe ou desc), Utilizando o Banco de Dados comercial, Excluindo registros com delete from, Excluindo todos os registros e resetando chave primária com truncate, Populando a Tabela comclien, Consultas em Tabelas (select from, select from where)', 'S', 15),
(85, 11, 'Consultas com Cláusulas, Operadores Relacionais, Operadores Lógicos', '00:30:28', 'https://www.youtube.com/embed/Ffm5Hmtw7RU', 'Consultas com Cláusulas (Where, Like, In, Not In, Between, Order By), Operadores Relacionais (=, <>, <, >, <=, >=), Operadores Lógicos (And, Or, Not), Consultando Registros Retornando Campos Específicos', 'S', 15),
(86, 1, 'Introdução a linguagem Java', '00:23:52', 'https://www.youtube.com/embed/_ZoBpcOmT40', 'Introdução a Linguagem Java, História sobre o Java, Tipos de Aplicativos, Como funciona o Java, Instalação do JDK', 'S', 14),
(87, 2, 'Instalação do Netbeans IDE, Instalação do Notepad++', '00:10:08', 'https://www.youtube.com/embed/bDhfr7Z_WtY', 'Instalação do Netbeans IDE 8.2 RC, Instação do Notepad++', 'S', 14),
(88, 3, 'Primeiro Programa, Variáveis e Tipos de Dados', '00:35:35', 'https://www.youtube.com/embed/AO0lRR6x52E', 'Criando o nosso Primeiro Programa (Notepad++), Configurando a variável de ambiente no Windows, Utilizando o Prompt de Comando para (Compilar (javac) e rodar o Programa com Java), Variáveis e Tipos de Dados, Palavras Reservadas', 'S', 14),
(89, 4, 'Diversos Tipos de Operadores', '00:37:25', 'https://www.youtube.com/embed/P_zahm2NdMI', 'Operadores (Aritméticos, Incremento e Decremento, Relacionais, Lógicos)', 'S', 14),
(90, 5, 'Operador de Atribuição, Estruturas de Decisão', '00:52:56', 'https://www.youtube.com/embed/rAvuKDs4CjI', 'Operador de Atribuição e Aritméticos, Estruturas de Decisão (Condicional Simples IF, Condicional Composta IF ELSE, Condicional Aninhada IF ELSE IF ELSE, Comando SWITCH)', 'S', 14),
(91, 6, 'Operador Ternário, Estruturas de Repetição', '00:41:51', 'https://www.youtube.com/embed/69YMX8DcXoY', 'Operador Ternário (Decisão), Estruturas de Repetição ((Loop), For, While, Do While), Comandos break e continue', 'S', 14),
(92, 7, 'Utilizando o Netbeans IDE, Arrays', '00:53:06', 'https://www.youtube.com/embed/LtNH3B2-o1M', 'Corrigindo a Instalação do JDK e Netbeans IDE, Criando o Primeiro Projeto Java no IDE, Organizando as aulas em Pacotes (Package), Arrays (Vetores e Matrizes), Passando valores, Percorrendo Array com Laço For', 'S', 14),
(93, 8, 'Procedimentos e Funções', '00:23:44', 'https://www.youtube.com/embed/o2z4IZmgAFU', 'Criando Procedimento (Função que não retorna valor) void, Criando uma Função (Retorna um valor) return, Funções como Métodos de uma Classe', 'S', 14),
(94, 9, 'Orientação a Objetos (Conceitos Iniciais)', '00:36:53', 'https://www.youtube.com/embed/CUYkv6swmfw', 'Diferença entre Programação Procedural e Orientada a Objetos, Dificuldades e Benefícios, Chip Central da OO, Conceitos, Como surgiu, Vantagens, Classes e Objetos, Atributos e Métodos, Criando Objetos (Instanciando), Exemplo de uma classe Caneta, Criando e Implementando Métodos, Instanciando objetos do tipo Caneta, Passando valores para os atributos, utilizando métodos da classe', 'S', 14),
(95, 10, 'Modificadores de Visibilidade, Herança, Sobrescrita', '00:39:53', 'https://www.youtube.com/embed/Zr2LcSVsbrY', 'Modificadores de Visibilidade (Public, Protected, Private), Modificadores de Acesso. Encapsulamento dos atributos e métodos. Herança (SuperClasse e SubClasse), Operador Extends, Sobrescrita de Método', 'S', 14),
(96, 12, 'A cláusula JOIN (Inner Join), Outer Join (Left, Right, Full), Realizando Consultas em Tabelas Relacionais', '00:36:23', 'https://www.youtube.com/embed/uV6SyRKAYz4', 'Criando um banco de dados relaciona_tabelas, Criando a Tabela usuario, Criando a Tabela perfil, Populando as Tabelas, Realizando Consultas Relacionais com Inner Join, Realizando Consultas com Outer Join (Left e Right), Utilizando o comando ON DELETE e ON UPDATE (Normatizando o Banco de Dados)', 'S', 15),
(97, 11, 'Constantes, Atributos Estáticos, Métodos Estáticos, Abstração, Métodos set e get, Método toString, Construtor', '00:57:34', 'https://www.youtube.com/embed/qSd9rw8ntW4', 'Trabalhando com membros de uma classe (declarando e utilizando constantes, declarando atributos estáticos, declarando e implementando métodos estáticos, abstração no conceito de herança, métodos getter e setter, trabalhando com método toString, construtor de classe)', 'S', 14),
(98, 12, 'Herança (Override e Polimorfismo)', '00:25:32', 'https://www.youtube.com/embed/uQ5wnlpeXcU', 'Trabalhando com Herança (SuperClasse e SubClasse), Classe Abstrata, Override (Sobrescrita de Método), Polimorfismo, Exercício (Conta e ContaCorrente).', 'S', 14),
(99, 13, 'Método Abstrato, Classe e Método Final e Interface', '00:26:12', 'https://www.youtube.com/embed/vYMgsIuWO68', 'Trabalhando com Método Abstrato (Declarando), Implementando Método Abstrato na Subclasse, Classe Final (Modificador Final), Método Final (Modificador Final)', 'S', 14),
(100, 14, 'Strings (Classes que Manipulam strings) Parte 1', '00:41:26', 'https://www.youtube.com/embed/53c6oGLAlg8', 'Manipulando Strings (Operação Básica, Construção, Localização, Comparação, Extração, Modificação)', 'S', 14),
(101, 15, 'Strings (Classes que Manipulam strings) Parte 2', '00:27:54', 'https://www.youtube.com/embed/ZqJjyEKXzyI', 'Tokenização (Pegando grandes quantidades de dados e dividindo em pedaços). Classes StringBuffer e StringBuilder', 'S', 14),
(102, 16, 'Número (Classe que manipula números), Data (Classes que manipulam datas)', '00:40:37', 'https://www.youtube.com/embed/ODcyH-R3n2Y', 'Classe Abstrata NumberFormat (Utilizando o método getInstance e suas derivadas), Internacionalização de Números, Classe Date e Calendar (Manipulando Datas e Formatando Datas), Desafio (Criar um programa que imprime uma saudação de acordo com a hora do dia)', 'S', 14),
(103, 17, 'Classes DateFormat e SimpeDateFormat', '00:41:14', 'https://www.youtube.com/embed/kpvMZSF1b7U', 'Resolvendo o desafio do programa saudação, formatando data e hora (métodos getDateInstance, getTimeInstance, getDateTimeInstance), Estilos de Data (FULL, LONG, MEDIUM, SHORT), Internacionalização de Data e Hora', 'S', 14),
(104, 18, 'ArrayList (Trabalhando com Lista Dinâmica)', '00:29:00', 'https://www.youtube.com/embed/AZOB0hOSouQ', 'Trabalhando com Listas Dinâmicas, utilizando os métodos (add, remove, contains, size)', 'S', 14),
(105, 19, 'Collection Java (Interface Collection (Set, List, Queue), Map)', '01:19:29', 'https://www.youtube.com/embed/33t7Ms3wg-Y', 'Trabalhando com coleções (utilizando métodos de Collection (add, toString, isEmpty, contains, remove,), métodos que trabalham com grupos (addAll, containsAll, removeAll), Utilitário Collections (métodos(sort, reverse, shuffle, addAll, frequency, disjoint, fill)), Trabalhando com Collection List (métodos(indexOf, subList, clear), Collection Set (Utilizando HashSet), Collection Queue (métodos(offset, peek, poll, addFirst, addLast, peekFirst, peekLast, pollFirst, pollLast), Collection Map (métodos(put, containsKey, containsValue, remove))', 'S', 14),
(106, 20, 'Tratamento de Exceções (try - catch - finally), Multicatch', '00:37:31', 'https://www.youtube.com/embed/Aorjbi2KMrc', 'Tratamento de Exceções (Utilizando o bloco Try - Catch), Conhecendo as exceções mais comuns, Multicatch Java 7, Hierarquia de Classes (Object, Throwable, Exception...), Desafio (Criando um tratamento em que verifica se a senha do usuário é válida)', 'S', 14),
(107, 21, 'Criando a nossa Exceção (Resolvendo Desafio Senha Inválida), Threads', '00:39:41', 'https://www.youtube.com/embed/8FatjtVp6dA', 'Criando nossa própria Exceção (Resolvendo desafio do tratamento de senha inválida), Lançando nossa própria exceção, tratando a verificação de senha com nossa Exceção. Introdução a Threads (Conhecendo a classe Thread), Construindo um exercício (classe PingPong uma subclasse da classe Thread), Entendendo o ciclo de vida da Thread, Implementando interface Runnable', 'S', 14),
(108, 22, 'Threads (Synchronized) sincronização', '00:46:57', 'https://www.youtube.com/embed/D5c1APsQ71g', 'Trabalhando com MultiThread (Criando um exemplo de saque em uma conta bancária conjunta), Criando a  Classe ContaConjunta, implementando o método sacar utilizando synchronized, Criando a classe ComprasEmFamilia que implementa interface Runnable, implementando o método run (Utilizando o método currentThread e o método getName). Utilizando Multithread com dois métodos (Utilizando o método wait e notifyAll)', 'S', 14),
(109, 23, 'Biblioteca I/O (Input - Output/ Read - Write/ Entrada - Saída)', '00:40:13', 'https://www.youtube.com/embed/dYx47fs2IFs', 'Classe Path e Paths (utilizando o método get), Utilizando os métodos (toAbsolutePath, getParent, getRoot, getFileName, toUri, getFileSystem, Criando diretório com classe Files (método createDirectories). Escrevendo em arquivo (método write), Lendo em arquivo (método readAllBytes), Hierarquia bufferm try, closable. Utilizando as classes (InputStream, InputStreamReader, BufferedReader (método readLine)), Lendo dados inseridos com teclado, Utilizando as classes (OutputStream, FileOutputStream, OutputStreamWriter, BufferedWriter (método write, close)', 'S', 14),
(110, 24, 'Biblioteca I/O (Classes Scanner e PrintStream)', '00:58:57', 'https://www.youtube.com/embed/PMqZk5iDXBg', 'Facilitando Escrita e Leitura com a classe PrintStream (método hasNextLine), Utilizando classe Charset e StandardCharsets, BufferedWriter (método newBufferedWriter), Gravando repositório (método flush e close), BufferedReader (método newBufferedReader). Desafio (criar um programa com 2 métodos, um que grava uma lista de contas bancárias em arquivo sequencial e outro lê esse arquivo carregando os  objetos do tipo conta)', 'S', 14),
(111, 25, 'Biblioteca I/O (Classe Files e seus métodos (check, delete, create, copy, move))', '00:53:13', 'https://www.youtube.com/embed/tbG_nI48NG0', 'Métodos da classe Files (check, delete, create, copy, move), Trabalhando com a classe FileSystems e FileSystem (métodos (getDefault, getRootDirectories)), Lendo conteúdo de diretório com a classe DirectoryStream e método newDirectoryStream da classe Files (método getFileName), Listando o conteúdo das partições (Iterable FileStore e método getFileStores))', 'S', 14),
(112, 26, 'Serialização de Objetos (Serializable)', '00:37:00', 'https://www.youtube.com/embed/kWHAyzEhiM4', 'Serializando Objetos implementando a interface Serializable (Escrita(Classe ObjectOutputStream e o método writeObject e close), Leitura (Classe ObjectInputStream e o método readObject)), Desafio Serializar Conta Bancária', 'S', 14),
(113, 27, 'JDBC (Java Database Conectivity) Parte 1', '00:42:06', 'https://www.youtube.com/embed/FTjHCBTgy2g', 'Baixando o driver de conexão com o Sistema de Gerenciamento de Banco de Dados (SGDB\'S) MySQL, Instalando o arquivo .jar no projeto java com Netbeans IDE, Criando um Banco de Dados (db_java) e Criando uma Tabela (pessoa), Criando a classe AcessoBanco (Atributos essenciais da classe, Carregando o driver jdbc, Utilizando a classe Connection (método getConnection da classe DriverManager), Utilizando a classe PreparedStatement, Criando um query de consulta (SELECT FROM), executando a query com o método executeQuery, Utilizando a classe ResultSet', 'S', 14),
(114, 28, 'JDBC (Java Database Conectivity) Parte 2', '01:11:23', 'https://www.youtube.com/embed/EFdSTv9qgtg', 'Criando a classe IncluirDados (Statement insert into), Inserindo pilhas de dados (Utilizando o método addBatch e executeBatch), Trabalhando com CRUD (Create, Read, Update e Delete) com as classes Conta e ContaCRUD (Criando métodos (inserir, selecionar, alterar e excluir), criando a classe principal ContaCRUDTeste', 'S', 14),
(115, 29, 'JDBC (Java Database Conectivity) Parte 3', '00:24:28', 'https://www.youtube.com/embed/Cb-7qELENSA', 'Trabalhando com Transaction, Commit e Rollback (Utilizando a classe ContaCRUD implementando o método transferir), Entendendo como se confirma uma transação ou desfaz uma transação', 'S', 14),
(116, 1, 'Introdução ao HTML 5', '38:53', 'https://www.youtube.com/embed/dVXwwMNobQQ', 'O que é HTML? Um simples documento HTML, Quais programas posso utilizar, Baixando e Instalando o Notepad++, Construindo nossa estrutura de pastas, Criando nosso primeiro documento e salvando, Explicando cada TAG do nosso documento, A declaração Doctype, Versões em HTML, Exemplos básicos (títulos, parágrafos, links, imagens), Utilizando atributos (href, target, src, width)', 'S', 22),
(117, 2, 'Elementos do HTML', '59:09', 'https://www.youtube.com/embed/XglHV8EY7io', 'Elementos HTML (sintaxe), Elementos aninhados, Elementos vazios (br, hr, img),  Atributos em TAGS (lang, href, target, src, width, alt, style, title), Cotação em valores de atributos (aspas simples e duplas), Títulos, Regras horizontais (hr - separador), Elementos HTML head, Visualizando código-fonte de uma página HTML, Elemento HTML pre (pre-formatação), Line Breaks (br - quebra de linha), Atributo style (cor de fundo, alinhamento horizontal do texto)', 'S', 22),
(118, 3, 'Formatação, Citações, Cometários e Links', '01:16:46', 'https://www.youtube.com/embed/g-4fT0PLXrg', 'Formatação de texto, Citações (q, blockquote), Abreviações (abbr), Elemento address, Elemento cite, Tags de comentário HTML, Comentário condicional, Elemento link (formatando link com css), Links Locais, Links Externos, Link em Imagem, Criando marcador (âncora), Caminho absoluto, Caminho relativo', 'S', 22),
(119, 4, 'Elemento Imagem', '01:06:09', 'https://www.youtube.com/embed/mPSrWCrWfRc', 'Elemento imagem (Atributos [src, alt, width, height]), Imagens em outra pasta, Imagens em outro servidor, Imagens animadas, Imagens flutuantes, Mapas de Imagem (Tag map, Tag source), Atributos (name, usemap, shape, coords), Imagens de Fundo (Propriedades [background-image, background-repeat, background-size, background-attachment]), Elemento picture, sub-elemento source, Atributo srcset', 'S', 22),
(120, 5, 'Elementos (Tabela, Lista, Em Bloco (div, span), Em linha)', '01:10:25', 'https://www.youtube.com/embed/jDBx16i3ZR0', 'Elemento Tabela (Tags [table, tr, th, td, thead, tbody, tfoot]), Mesclando colunas e linhas (Atributo colspan, rowspan), Formatando tabela com CSS, Collapsando células, Espaçamento entre células, Utilizando o pseudo-seletor nth-child (Zebrando linhas), Elemento Lista (Ordenada e Não-Ordenada), Lista Aninhada (Lista e Sublista), Lista de Descrição (Tags dl, dt, dd), Elementos HTML em bloco e em linha (Tags div, span)', 'S', 22),
(121, 6, 'Atributo class e id, Elemento iframe, Estilos CSS, Caminho de arquivo', '01:07:15', 'https://www.youtube.com/embed/6fiWHXydnjc', 'Atributo class (Utilizando com CSS e Javascript), Utilizando Tag button (Atributo onclick), Uma class para vários elementos, Elemento iframe (largura e altura, remover borda, vincular com link), Estilos HTML - CSS (Utilizando CSS externo), Criando vínculo com Tag link (atributo rel e href), Atributo id (formatando um único elemento específico), Referências externas, Caminhos (absoluto e relativo), Elemento head (title, style, meta, link, script, meta), Entendendo os metadados (author, description, keywords, charset, viewport)', 'S', 22),
(122, 7, 'Layout, Tags header, nav, aside, main, footer. W3.CSS na Prática, Elementos de código', '01:24:09', 'https://www.youtube.com/embed/YeJxfEmljyA', 'Layouts (Tags [header, nav, aside, main, footer]), Formatando Layout com CSS Externo, Design Responsivo (Imagem e texto responsivos), Utilizando W3.CSS (Biblioteca CSS responsiva), Elementos de código (Tags [kbd, samp, code, var])', 'S', 22),
(123, 8, 'Elemento formulário, Tipo de entrada (HTML 5), Validações', '01:09:40', 'https://www.youtube.com/embed/6t3ASoKUli8', 'Elemento formulário (Tag form, Atributos [method, action]), Elemento entrada (Tag input, Atributos [type, name, id, value]), Elemento rótulo (Tag label, Atributo [for]), Tipos de entrada (text, radio, submit, reset, password, checkbox), Atributo method (Usar post e get), Elementos fieldset e legend, Elemento select e option, Atributo selected, Elemento textarea, Atributos [rows e cols], Elemento button, Elemento datalist, Atributo list, Elemento output, Elementos novos HTML 5, Tipos de entrada (color, date, datetime-local, email, month, number, Atributos [min e max])', 'S', 22),
(124, 9, 'Elemento formulário, Tipos de campos HTML 5', '01:16:26', 'https://www.youtube.com/embed/ZOMt5qfaA94', 'Tipos de campos (range, Atributos [min, max, step, value], search, tel, time, url, week), Atributos (value, readonly, disabled, maxlength, minlength, autocomplete, novalidate, autofocus, form, formaction, formenctype, formmethod, formnovalidate, formtarget, multiple, pattern, placeholder e required)', 'S', 22),
(125, 10, 'Introdução ao W3.CSS (Biblioteca de Estilos)', '01:34:55', 'https://www.youtube.com/embed/6flXAsVNoFA', 'Introdução ao W3.CSS (Biblioteca CSS), Criar Link para Biblioteca, Classes Gerais (Class w3-container, w3-color, w3-center, w3-panel, w3-leftbar, w3-xxlarge, w3-serif, w3-card-4, w3-round-xlarge, w3-border, w3-border-color, w3-pale-color, w3-hover-border-color), Classe card (w3-card, w3-card-4), Classe (w3-container (alinhar os elementos horizontalmente))', 'S', 22),
(126, 11, 'Introdução ao W3.CSS (Biblioteca de Estilos) Parte 02', '02:02:54', 'https://www.youtube.com/embed/LYtnME6GVV8', 'Explicando Classe card (Estilo largura [width]), Classe w3-hover-shadow (Sombreamento ao passar o mouse), Espaçamento interno (w3-padding), Classe card (Utilizando imagens e botões), Classe card (Solicitação de amizade), Classe fonts (w3-monospace, w3-cursive, w3-wide), Classe align (w3-left-align, w3-right-align, w3-center), Classe opactity (w3-opacity), Classe text shadow (Style CSS), Classe round (w3-round-small, w3-round, w3-round-large, w3-round-xlarge, w3-round-xxlarge), Classe (w3-circle (arredondando elementos)), Classe padding (w3-padding-16, w3-padding-24, w3-padding-32, w3-padding-48, w3-padding-64, [w3-padding-small, w3-padding, w3-padding-large]), Classe margin (w3-margin, w3-margin-top, w3-margin-bottom, w3-margin-left, w3-margin-right), Classe section (w3-section), Classe display (w3-display-container, w3-display-topleft, w3-display-left, w3-display-bottomleft, w3-display-topmiddle, w3-display-middle, w3-display-bottommiddle, w3-display-topright, w3-display-right, w3-display-bottomright), Classe w3-display-hover (Ao passar o mouse, criando um card interativo), Classe float (w3-left, w3-right), Classe bar (w3-bar [barra de navegação]), Classe hide e show (w3-hide [ocultar], w3-show [mostrar])', 'S', 22),
(127, 12, 'Introdução ao W3.CSS (Biblioteca de Estilos) Parte 03', '01:44:56', 'https://www.youtube.com/embed/QWMnQVPmDMc', 'Classe button e btn (w3-btn, w3-button), Classe bar (w3-bar [barra de navegação horizontal]), w3-block [botão largura 100%], w3-circle [botão circular], w3-ripple [efeito em cascata], Classe hover (w3-hover-color), Classe round, Classe size (w3-tiny, w3-small, w3-medium, w3-large, w3-xlarge, w3-xxlarge, w3-xxxlarge, w3-jumbo), Classe border (w3-border), Classe padding (w3-padding-small, w3-padding, w3-padding-large), Classe block (w3-block [100% largura]), Classe disabled (w3-disabled), Classe item (w3-bar-item [sem espaçamento]), Classe table (w3-table, w3-striped, w3-bordered) Classe all (w3-table) Classe centered (w3-centered), Classe hoverable (w3-hoverable), Classe responsive (w3-responsive), Classe list (w3-ul), Criando uma lista de avatares (w3-card-4, w3-bar, w3-bar-item, w3-hide-small)', 'S', 22),
(128, 13, 'Introdução ao W3.CSS (Biblioteca de Estilos) Parte 04', '01:41:00', 'https://www.youtube.com/embed/QZD8CW7uhu0', 'Classe image (w3-round (cantos arredondados), w3-circle (imagem em um círculo), w3-border (imagem com bordas), Classe card (w3-card, w3-card-4 (imagem dentro de um card)), Classe width e max-width (define largura e largura máxima), Classe opacity (w3-opacity-min, w3-opacity,  w3-opacity-max) Classe grayscale (w3-grayscale-min, w3-grayscale, w3-grayscale-max),  Classe sepia (w3-sepia-min, w3-sepia, w3-sepia-max), Classe hover (Efeitos ao passar o mouse), Classe input (w3-input), Label Color (w3-text-color), Classe border (w3-border (input com bordas), w3-round (input com bordas arredondadas), Sem bordas (w3-border-0)), Classe animate (efeito quando campo recebe foco (w3-animate-input), Classe checkbox (w3-check), Classe radio (w3-radio), Classe select (w3-select), Classe responsive grid (w3-row, w3-row-padding, w3-third), Utilizando label (w3-half), Utilizando Ícones (Link para biblioteca, Inserindo ícones, TAG i [icon])', 'S', 22),
(129, 14, 'Introdução ao W3.CSS (Biblioteca de Estilos) Parte 05', '01:33:33', 'https://www.youtube.com/embed/HGmFiHegsPg', 'Layout Responsive Grid (w3-row, w3-row-padding), Colunas (w3-half, w3-third, w3-twothird, w3-quarter, w3-threequarter), w3-col (grade responsiva de 12 colunas), w3-rest (restante das colunas), Largura de colunas em porcentagem, w3-content (conteúdo centralizado com largura padrão de 980px), w3-stretch (remove margens direita e esquerda de um elemento), w3-hide-small, w3-hide-medium, w3-hide-large (ocultam elementos em largura de tela específicos), w3-mobile (exibe elementos em dispositivos móveis)', 'S', 22),
(130, 15, 'Introdução ao W3.CSS (Biblioteca de Estilos) Parte 06', '01:05:18', 'https://www.youtube.com/embed/YZ2xQMB3Bak', 'Menu dropdown (w3-dropdown-hover, w3-dropdown-content), Qualquer elemento pode ser dropdown (div, span, p...), Barra de Navegação com dropdown (w3-bar, w3-bar-item), Dropdown clicável (w3-dropdown-click, javascript function), Imagem dropdown (w3-dropdown-hover, img), Card dropdown (w3-dropdown-hover, w3-card-4), Dropdown animate (w3-animate-zoom, w3-animate-top, w3-animate-bottom, w3-animate-left, w3-animate-right, w3-animate-opacity)', 'S', 22),
(131, 16, 'Introdução ao W3.CSS (Biblioteca de Estilos) Projeto Final', '02:02:10', 'https://www.youtube.com/embed/WtRkuC3SA_g', 'Criando nosso projeto final (Estrutura de páginas: Início, Quem Somos, Portfolio, Fale Conosco), Barra Lateral (w3-sidebar), Janela Modal (w3-modal, w3-modal-content), Slideshow clicável (w3-display-content, w3-display-container, Javascript function), Slideshow automático (Javascript com função setTimeout), Desafio (Criar a página Fale Conosco utilizando W3.CSS e formulário), Finalizando o curso', 'S', 22),
(132, 30, 'Introdução ao JavaEE (JSP e Elementos Sintáticos)', '51:30', 'https://www.youtube.com/embed/ouxWUC4tUJk', 'Introdução ao Java Enterprise Edition, JSP e Servlets, Baixando e Instalando o Tomcat no Netbeans IDE (Testando o servidor local), Criando nosso projeto web no Netbeans, Trabalhando com arquivo jsp (Hello World), JSP Elementos Sintáticos (scripting, diretivas e ações), Declarando scriptlets, Declarando diretivas (page, include e taglib), Declarando ações (element, forward, getProperty, include, plugin, setProperty, text e useBean), Exemplo prático (Incluindo bibiotecas, declarando variável, instanciando objetos, exbindo valores da variável), Objetos implícitos (out.println, request.getParameter), Criando formulário HTML e enviado dados para página JSP', 'S', 14),
(133, 31, 'Introdução aos Servlets (Exemplo prático)', '30:51', 'https://www.youtube.com/embed/OopfwE0UqkA', 'Introdução aos Servlets, Criando o pacote servlets, Criando um arquivo HTML formulário de login, Criando um Servlet para gerenciar os dados.', 'S', 14),
(134, 32, 'Introdução ao padrão MVC (Servlets e JSP)', '01:31:07', 'https://www.youtube.com/embed/fkK4_XiJgbw', 'Uso do padrão MVC, Trabalhando com JSP e Servlets, Criando um menu de opções com HTML, gerenciando com Servlet, Enviando solicitação para outros Servlets de acordo com opção selecionada, devolvendo resultado em página JSP (Objeto RequestDispatcher [métodos, getServletContext e getRequestDispatcher])', 'S', 14),
(135, 33, 'Trabalhando com Sessões e Cookies', '01:10:14', 'https://www.youtube.com/embed/5iUomNextKE', 'Trabalhando com Session e Cookies (Gerenciando Sessões, Criando tela de login no arquivo jsp, Criando Servlet ExecutarLogin), Interface HttpSession, utilizando método getSession do objeto request, Utilizando os métodos getAttribute e setAttribute, Utilizando o método isNew, Armazenando nome do usuário na Sessão, Session ID, reescrita de URL (encodeURL). Destruir Sessões (passando valor NULL para sessão, sessionInvalidate). Trabalhando com Cookie (Instanciando objeto Cookie, Adicionando Cookies com método addCookie do objeto response, recuperando cookies com método getCookies do objeto request)', 'S', 14),
(136, 34, 'Integrando Aplicação com Banco de Dados (JavaBean) - Inserir e Listar', '01:37:05', 'https://www.youtube.com/embed/ZZjYlJNskKc', 'Integrando aplicação com Banco de Dados (WampServer MySQL), Utilizando o driver jdbc mysql (arquivo .jar), Criando o banco de dados projeto_java, Criando as Tabelas acesso e usuario, Criando o pacote model (Criando a classe de Conexão, Criando a classe Acesso com os métodos (inserir, alterar, excluir, listarTudo), Criando Views (view_principal, view_erro, view_inserir e view_listar), Criando Controller (GerenciaAcesso), Controller insereDados.jsp (Utilizando componente JavaBean), Testando aplicação', 'S', 14),
(137, 35, 'Integrando Aplicação com Banco de Dados (JavaBean) - Editar e Excluir', '00:57:09', 'https://www.youtube.com/embed/0EC4bDQHn94', 'Integrando aplicação com Banco de Dados (Atualizar e Excluir), Alterando arquivo view_listar (adicionando links), Implementando método listarPeloId na classe model Acesso. Criando a página formEditar.jsp, Criando a página excluiAcesso.jsp e editaAcesso.jsp, Melhorando a aparência das nossas Views.', 'S', 14),
(138, 36, 'Integrando Aplicação com Banco de Dados (JavaBean) - Sistema de Login', '01:24:16', 'https://www.youtube.com/embed/R_iEo1t4KVE', 'Criando um sistema de login, Cadastrando um usuário na tabela usuario, criando o arquivo index.jsp (Utilizando HttpSession, [métodos getAttribute e setAttribute]), Verificando se sessão é nova ou tem valor false, Criando formulário de login, Criando a classe Usuario, Criando o servlet ExecutarLogin (Implementando o método doPost e doGet), Verificando erros e testando projeto final', 'S', 14),
(139, 30, 'PHP 7 OO Introdução', '00:09:28', 'https://www.youtube.com/embed/BY81DB5_TLY', 'Diferença entre programação estruturada e orientado a objetos, POO (Dificuldades e Benefícios), Chip Central da OO, Conceitos de Orientação a Objetos (POO, Objetivo, Como era? Quem criou? Programação Estruturada -> Programação Modular -> OO), Vantagens (Confiável, Oportuno, Manutenível, Extensível, Reutilizável, Natural)', 'S', 12),
(140, 31, 'Classes e Objetos, Atributos e Métodos', '00:27:35', 'https://www.youtube.com/embed/_x12xMF99-0', 'Conceito de Classe, Criando uma Classe, Conceito de Atributos, Criando Atributos, Conceito de Métodos, Criando Métodos (Implementando Métodos), Instanciando uma Classe (Criando Objeto), Passando Valores para os Atributos, Acessando os Métodos', 'S', 12),
(142, 32, 'Construtor, Destrutor, Classe SPL', '00:31:46', 'https://www.youtube.com/embed/NQj8bwQOBSQ', 'Criando método Construtor (__construct( ) ), método Destrutor (__destruct( ) ), Modelando a classe Pessoa, Trabalhando com a classe SPL - Standard PHP LIbrary (Carregando Classes Dinamicamente), Implementando os Métodos da classe Pessoa, Instanciando o objeto da classe Pessoa, Utilizando construtor (estado inicial do objeto), Utilizando os métodos da classe Pessoa', 'S', 12),
(143, 33, 'Conceito de Herança, Métodos Sobrescritos (override), Polimorfismo', '00:40:29', 'https://www.youtube.com/embed/HU1YN_1sn7M', 'Entendendo Herança, Criando classe-pai Conta e uma classe-filha ContaCorrente (Utilizando operador extends), Sobrescrita de métodos (override), Polimorfismo (mesmo método com comportamento diferente), Testando o objeto da classe ContaCorrente', 'S', 12),
(144, 34, 'Classe Abstrata (abstração), Método Abstrato, Classe e Método Final', '00:24:55', 'https://www.youtube.com/embed/5xlyiLdbHZM', 'Conceito de Abstração (Classe Abstrata), declarando classe com abstract, Método Abstrato (métodos declarados na classe-pai, serão somente implementados na classe-filha), Declarando o método transferir( ) na classe Conta, Implementando o método transferir na classe ContaCorrente, Criando duas contas e transferindo dinheiro entre elas, Classe Final e Método Final', 'S', 12);
INSERT INTO `aula` (`id_aula`, `numero_aula`, `titulo_aula`, `duracao_aula`, `embed_youtube`, `descricao`, `ativo_aula`, `id_curso`) VALUES
(145, 35, 'Encapsulamento, Modificadores de Acesso (Public, Protected, Private), Constantes de Classe', '00:32:22', 'https://www.youtube.com/embed/B9i-wuhv3I4', 'Encapsulamento para proteger os membros da classe, Modificadores de Acesso (Modos de Visibilidade: Public, Protected, Private), a Acessibilidade dos atributos e métodos da classe. Constantes de Classe (Acessando internamente e externamente)', 'S', 12),
(146, 36, 'Atributo Estático, Método Estático, Interceptadores (__set( ), __get( ))', '00:36:24', 'https://www.youtube.com/embed/ECxQwSe2pHQ', 'Declarando atributo estático, utilizando o operador self::, Declarando método estático, Acessando métodos estáticos com a sintaxe Classe::Metodo, Interceptadores __set( ), interceptando a atribuição de valores, __get, interceptando a requisição de valores', 'S', 12),
(147, 37, 'Interceptadores __call( ), __callStatic( ), __toString( ) e __clone( ), Replicando e Clonando Objetos', '00:32:39', 'https://www.youtube.com/embed/bfNpleI4XzY', 'Trabalhando com o interceptador __call( ) e __callStatic( ), quando chamamos métodos que não existem, interceptador __toString( ), imprimir objetos com echo e print, Replicando objetos e Clonando objetos com o interceptador __clone( )', 'S', 12),
(148, 38, 'Interface (Criando uma interface, utilizando a interface implementando em uma Classe)', '00:27:04', 'https://www.youtube.com/embed/goJBv6RhhBg', 'Criando uma Interface, declarando os métodos na Interface, Utilizando a Interface implementando em uma Classe', 'S', 12),
(149, 39, 'MER (Modelo Entidade-Relacional) Associação, Agregação e Composição', '00:59:26', 'https://www.youtube.com/embed/5SIQxlSk7Uc', 'MER (Modelo Entidade-Relacional), Como os objetos podem se comunicar entre si, Associação (Criando a classe Produto e Fornecedor), Agregação (Criando a classe Curso e Aluno), Composição (Criando a classe DadosPessoais e DadosLocalidade) Trabalhando com Delegação de Métodos', 'S', 12),
(150, 40, 'PDO (PHP Data Object) - Criando um CRUD (Create, Read, Update, Delete) Parte 1', '00:30:58', 'https://www.youtube.com/embed/AmTvVKfK2c0', 'Conhecendo a Classe PDO e seus principais Métodos, Utilizando o banco de dados a3tech_php, Modelando a classe Conecta, declarando atributo estático $conn e os métodos estáticos pegarConexao( ) e preparaSQL( ), Fazendo tratamento com try{ }catch( ){ }, Modelando a classe Pessoa e a classe PessoaDAO. Modelo DAO (Data Access Object), classe que provê o acesso aos dados e os métodos para manipular a tabela do Banco de Dados com os métodos (inserir( ), atualizar( ), selecionarTudo( ), selecionarPeloID( ), deletarPeloID( )), Conhecendo o atributo bindValue( ) e o método execute( )', 'S', 12),
(151, 41, 'PDO (PHP Data Object) - Criando um CRUD (Create, Read, Update, Delete) Parte 2', '00:40:33', 'https://www.youtube.com/embed/G-jjc63u40c', 'Conhecendo a Classe PDO e seus principais Métodos, Modelando a classe PessoaDAO. Modelo DAO (Data Access Object), classe que provê o acesso aos dados e os métodos para manipular a tabela do Banco de Dados com os métodos (selecionarTudo( ), selecionarPeloID( ), deletarPeloID( )), Utilizando o Bootstrap, Bootstrap Icons, JQuery, Criando a Tela de Cadastro', 'S', 12),
(152, 42, 'PDO (PHP Data Object) - Criando um CRUD (Create, Read, Update, Delete) Parte 3', '00:41:42', 'https://www.youtube.com/embed/2a_14crJDuc', 'Conhecendo a Classe PDO e seus principais Métodos, Utilizando o Bootstrap, Bootstrap Icons, JQuery, Criando o arquivo inserir, Criando link e Página Listar Pessoas, Criando a Tabela e Selecionando os Registros, Criando os botões Editar e Excluir', 'S', 12),
(153, 43, 'PDO (PHP Data Object) - Criando um CRUD (Create, Read, Update, Delete) Parte 4', '00:37:29', 'https://www.youtube.com/embed/tGhZ8GzOVjU', 'Conhecendo a Classe PDO e seus principais Métodos, Utilizando o Bootstrap, Bootstrap Icons, JQuery, Criando os Links Excluir e Editar, Passando parâmetro id nos Links, Criando o arquivo deletar, Criando o Formulário de Edição, Selecionando o Registro pelo ID e Inserindo Informações no Formulário, Criando o arquivo editar', 'S', 12),
(154, 44, 'PDO (PHP Data Object) - Sistema de Login Parte 1', '00:25:02', 'https://www.youtube.com/embed/F94wBpo3jQc', 'Trabalhando com o banco de dados a3tech_php nas tabelas (usuario, perfil_usuario), Modelando as Classes (Perfil Usuario e PerfilUsuarioDAO com o método selecionarTudo( )). Modelando as classes (Usuario e UsuarioDAO com os métodos logar( ) e deslogar( )), Criando a página de login', 'S', 12),
(155, 45, 'PDO (PHP Data Object) - Sistema de Login Parte 2', '00:32:07', 'https://www.youtube.com/embed/hvrS6lKT2OI', 'Criando o arquivo autenticar, Fazendo mais tratamentos no método logar( ) da classe UsuarioDAO, Implementando e fazendo os tratamentos no arquivo autenticar, criando o arquivo principal, guardando informações nas sessões: autenticado e usuario, retornando nome do usuario que está logado, criando o link sair, passando parâmetro e verificando se usuario clicou no link sair, verificando se usuario não está logado, implementando o método estático deslogar, Finalizando o curso', 'S', 12),
(156, 1, 'Introdução ao Java - Instalação do JDK', '23:52', 'https://www.youtube.com/embed/_ZoBpcOmT40?si=9IrBcTNvq_PkSgti', 'Introdução a Linguagem Java, História sobre o Java, Tipos de Aplicativos, Como funciona o Java, Instalação do JDK', 'S', 27),
(157, 2, 'Instalação do Netbeans IDE e Notepad++', '10:08', 'https://www.youtube.com/embed/bDhfr7Z_WtY?si=I4JyuiRDbIugq47J', 'Instalação do Netbeans IDE 8.2 RC, Instação do Notepad++', 'S', 27),
(158, 3, 'Criando o Primeiro Programa, Variáveis e Tipos de Dados', '35:35', 'https://www.youtube.com/embed/AO0lRR6x52E?si=1x_0lWx3HP3vJW33', 'Criando o nosso Primeiro Programa (Notepad++), Configurando a variável de ambiente no Windows, Utilizando o Prompt de Comando para (Compilar (javac) e rodar o Programa com Java), Variáveis e Tipos de Dados, Palavras Reservadas', 'S', 27),
(159, 4, 'Introdução a Orientação a Objetos - Classes e Objetos, Atributos e Métodos', '36:53', 'https://www.youtube.com/embed/CUYkv6swmfw?si=S2ysD5wNXELweg0m', 'Diferença entre Programação Procedural e Orientada a Objetos, Dificuldades e Benefícios, Chip Central da OO, Conceitos, Como surgiu, Vantagens, Classes e Objetos, Atributos e Métodos, Criando Objetos (Instanciando), Exemplo de uma classe Caneta, Criando e Implementando Métodos, Instanciando objetos do tipo Caneta, Passando valores para os atributos, utilizando métodos da classe', 'S', 27),
(160, 5, 'Modificadores de Acesso (Public, Protected, Private), Herança e Sobrescrita', '39:53', 'https://www.youtube.com/embed/Zr2LcSVsbrY?si=RKoSV8oYW9510Dzh', 'Modificadores de Visibilidade (Public, Protected, Private), Modificadores de Acesso. Encapsulamento dos atributos e métodos. Herança (SuperClasse e SubClasse), Operador Extends, Sobrescrita de Método', 'S', 27),
(161, 6, 'Membros de Classe (Constantes, Atributo e Método Estático, Abstração), Getter e Setter, Construtor', '57:34', 'https://www.youtube.com/embed/qSd9rw8ntW4?si=x9yCDZ2a4JcAnFF3', 'Trabalhando com membros de uma classe (declarando e utilizando constantes, declarando atributos estáticos, declarando e implementando métodos estáticos, abstração no conceito de herança, métodos getter e setter, trabalhando com método toString, construtor de classe)', 'S', 27),
(162, 7, 'Trabalhando com Herança (Super e Sub Classe), Override, Polimorfismo', '25:32', 'https://www.youtube.com/embed/uQ5wnlpeXcU?si=TjMKjwWWr1VpJJzx', 'Trabalhando com Herança (SuperClasse e SubClasse), Classe Abstrata, Override (Sobrescrita de Método), Polimorfismo, Exercício (Conta e ContaCorrente)', 'S', 27),
(163, 8, 'Método Abstrato, Classe e Método Final', '26:12', 'https://www.youtube.com/embed/vYMgsIuWO68?si=Ee8_Bx7SUrIcREyR', 'Trabalhando com Método Abstrato (Declarando), Implementando Método Abstrato na Subclasse, Classe Final (Modificador Final), Método Final (Modificador Final)', 'S', 27),
(164, 9, 'Tratamento de Exceções (Try-Catch, Multicatch', '37:31', 'https://www.youtube.com/embed/Aorjbi2KMrc?si=Wi0cQgHPuj7luna5', 'Tratamento de Exceções (Utilizando o bloco Try - Catch), Conhecendo as exceções mais comuns, Multicatch, a partir da versão Java 7', 'S', 27),
(165, 10, 'Introdução ao JDBC - Parte 1 - Utilizando o MySQL', '42:06', 'https://www.youtube.com/embed/FTjHCBTgy2g?si=0ws7oWxV245xHsE0', 'Baixando o driver de conexão com o Sistema de Gerenciamento de Banco de Dados (SGDB\'S) MySQL, Instalando o arquivo .jar no projeto java com Netbeans IDE, Criando um Banco de Dados (db_java) e Criando uma Tabela (pessoa), Criando a classe AcessoBanco (Atributos essenciais da classe, Carregando o driver jdbc, Utilizando a classe Connection (método getConnection da classe DriverManager), Utilizando a classe PreparedStatement, Criando um query de consulta (SELECT FROM), executando a query com o método executeQuery, Utilizando a classe ResultSet', 'S', 27),
(166, 11, 'Introdução ao JDBC - Parte 2 - Utilizando o MySQL', '1:11:23', 'https://www.youtube.com/embed/EFdSTv9qgtg?si=jEzkv8k40T5L-lIr', 'Criando a classe IncluirDados (Statement insert into), Inserindo pilhas de dados (Utilizando o método addBatch e executeBatch), Trabalhando com CRUD (Create, Read, Update e Delete) com as classes Conta e ContaCRUD (Criando métodos (inserir, selecionar, alterar e excluir), criando a classe principal ContaCRUDTeste', 'S', 27),
(167, 12, 'Introdução ao JDBC - Parte 3 - Utilizando o MySQL', '24:28', 'https://www.youtube.com/embed/Cb-7qELENSA?si=8DwbxRZBSL6_pYsl', 'Trabalhando com Transaction, Commit e Rollback (Utilizando a classe ContaCRUD implementando o método transferir), Entendo como se confirma uma transação ou desfaz uma transação', 'S', 27),
(168, 13, 'Introdução ao Java EE (JSP e Servlets)', '51:30', 'https://www.youtube.com/embed/ouxWUC4tUJk?si=CYRU45kAjouPHgqm', 'Introdução ao Java Enterprise Edition, JSP e Servlets, Baixando e Instalando o Tomcat no Netbeans IDE (Testando o servidor local), Criando nosso projeto web no Netbeans, Trabalhando com arquivo jsp (Hello World), JSP Elementos Sintáticos (scripting, diretivas e ações), Declarando scriptlets, Declarando diretivas (page, include e taglib), Declarando ações (element, forward, getProperty, include, plugin, setProperty, text e useBean), Exemplo prático (Incluindo bibiotecas, declarando variável, instanciando objetos, exbindo valores da variável), Objetos implícitos (out.println, request.getParameter), Criando formulário HTML e enviado dados para página JSP', 'S', 27),
(169, 14, 'Introdução aos Servlets', '30:51', 'https://www.youtube.com/embed/OopfwE0UqkA?si=z-dqGWH_3BV0rYWS', 'Introdução aos Servlets, Criando o pacote servlets, Criando um arquivo HTML formulário de login, Criando um Servlet para gerenciar os dados.', 'S', 27),
(170, 15, 'Uso do Padrão MVC (Model (JavaBean), View (JSP, XHTML), Controller (Servlets))', '01:31:07', 'https://www.youtube.com/embed/fkK4_XiJgbw?si=dwjGeoZRybU5yQTd', 'Uso do padrão MVC, Trabalhando com JSP e Servlets, Criando um menu de opções com HTML, gerenciando com Servlet, Enviando solicitação para outros Servlets de acordo com opção selecionada, devolvendo resultado em página JSP (Objeto RequestDispatcher [métodos, getServletContext e getRequestDispatcher])', 'S', 27),
(171, 16, 'Trabalhando com Session e Cookies', '01:10:14', 'https://www.youtube.com/embed/5iUomNextKE?si=yNkvxW63VbtTBbHA', 'Trabalhando com Session e Cookies (Gerenciando Sessões, Criando tela de login no arquivo jsp, Criando Servlet ExecutarLogin), Interface HttpSession, utilizando método getSession do objeto request, Utilizando os métodos getAttribute e setAttribute, Utilizando o método isNew, Armazenando nome do usuário na Sessão, Session ID, reescrita de URL (encodeURL). Destruir Sessões (passando valor NULL para sessão, sessionInvalidate). Trabalhando com Cookie (Instanciando objeto Cookie, Adicionando Cookies com método addCookie do objeto response, recuperando cookies com método getCookies do objeto request).', 'S', 27),
(172, 17, 'Integrando java EE com Banco de Dados (JavaBean) - Parte 1', '01:37:05', 'https://www.youtube.com/embed/ZZjYlJNskKc?si=EQVUrFeUPh5ILGXF', 'Integrando aplicação com Banco de Dados (WampServer MySQL), Utilizando o driver jdbc mysql (arquivo .jar), Criando o banco de dados projeto_java, Criando as Tabelas acesso e usuario, Criando o pacote model (Criando a classe de Conexão, Criando a classe Acesso com os métodos (inserir, alterar, excluir, listarTudo), Criando Views (view_principal, view_erro, view_inserir e view_listar), Criando Controller (GerenciaAcesso), Controller insereDados.jsp (Utilizando componente JavaBean), Testando aplicação', 'S', 27),
(173, 18, 'Integrando java EE com Banco de Dados (JavaBean) - Parte 2', '57:09', 'https://www.youtube.com/embed/0EC4bDQHn94?si=eRqeDxRZN_LHk3m5', 'Integrando aplicação com Banco de Dados (Atualizar e Excluir), Alterando arquivo view_listar (adicionando links), Implementando método listarPeloId na classe model Acesso. Criando a página formEditar.jsp, Criando a página excluiAcesso.jsp e editaAcesso.jsp, Melhorando a aparência das nossas Views.', 'S', 27),
(174, 19, 'Integrando java EE com Banco de Dados (JavaBean) - Parte 3', '01:24:16', 'https://www.youtube.com/embed/R_iEo1t4KVE?si=LG4bWjyg5zI-oA81', 'Criando um sistema de login, Cadastrando um usuário na tabela usuario, criando o arquivo index.jsp (Utilizando HttpSession, [métodos getAttribute e setAttribute]), Verificando se sessão é nova ou tem valor false, Criando formulário de login, Criando a classe Usuario, Criando o servlet ExecutarLogin (Implementando o método doPost e doGet), Verificando erros e testando projeto final.', 'S', 27),
(175, 20, 'Introdução ao AngularJS', '09:04', 'https://www.youtube.com/embed/SW1V4Ag5B3Y?si=banc14rDTbrk1gbF', 'Introdução ao curso de AngularJs, O que é o Angularjs, Estrutura em Camadas, Testes de automação, Criadores, Cases de sucesso, Por que eu deveria usar AngularJS, Arquitetura do AngularJS, Separação de responsabilidades', 'S', 27),
(176, 21, 'Baixando o AngularJS e Primeiro Exemplo', '44:19', 'https://www.youtube.com/embed/hdEwrDB7TBw?si=G1GhWRPjP8HVcmNe', 'Criando um novo projeto no Netbeans, Linkando AngularJS com documento HTML, Conhecendo as diretivas (ng-app - inicializando o módulo da aplicação, ng-controller - criando o controller da nossa aplicação, criando um array de produtos, ng-repeat - criando um laço de repetição, ng-bind - exibindo produtos, ng-click - criando funções e integrando no módulo da aplicação)', 'S', 27),
(177, 22, 'Continuando o Projeto - Finalizando o CRUD', '16:41', 'https://www.youtube.com/embed/Q-qWDWl2zKg?si=A-pJK5qDqpEb_KLe', 'Dando continuidade ao projeto produtos, diretiva ng-click (integrando funções ao módulo da aplicação,  two-way databind, utilizando a função copy), finalizando o crud (create, read, update e delete)', 'S', 27),
(178, 23, 'Trabalhando com Services (Separando módulo e controller)', '14:35', 'https://www.youtube.com/embed/d0oZqyL0jvE?si=1Ct6SLxVHBaWJZhX', 'Trabalhando com services (Criando um service, separando módulo e controller, migrando as funções para o service, criando uma função para listar os produtos)', 'S', 27),
(179, 24, 'Conhecendo o Node JS', '44:39', 'https://www.youtube.com/embed/NznpdgPbiTo?si=WmEb6F63tSWBwfPG', 'Conhecendo o Node JS, instalando o nodejs, Criando um arquivo JSON para produtos, rodando o servidor json-server, Instalando o Postman, Utilizando o API Rest com o servidor json-server (GET, POST, PUT e DELETE), Utilizando o service http no módulo da aplicação', 'S', 27),
(180, 25, 'Serviços REST, Web Services e RestFull', '29:33', 'https://www.youtube.com/embed/ugyjNQ85djg?si=20R1S713rt6D2ZS-', 'Primeiros passos com serviços REST, Protocolo SOAP e webservices, Utilizando o Apache Tomcat, Utilizando o Apache Maven, Java e REST,  Jersey Web Services e RestFull (Anotações e suas utilidades), Criando um novo projeto Maven (Aplicação web)', 'S', 27),
(181, 26, 'Projeto Maven (Resolvendo conflito) - Jersey (Injeção de Dependências)', '35:55', 'https://www.youtube.com/embed/GKBhCCxS6pI?si=Qf60iuuICRXBCjBp', 'Resolvendo conflito na criação do projeto Maven (netbeans.conf), Arquivo pom.xml, Injeção de dependências (Utilizando o jersey), Criando a classe MyApplication filha de ResourceConfig (Definindo o caminho da nossa aplicação), Criando o nosso controller (Hello), Criando os métodos (getMensage e getUsuario) utilizando as anotações jersey, Testando a nossa aplicação', 'S', 27),
(182, 27, 'Criando nosso projeto CRUD - Parte 1', '46:55', 'https://www.youtube.com/embed/W0zFPuJDmUo?si=5ARoTUAN4Uz5W2W-', 'Criando a classe ChamadoController no projeto CRUD-Back (Criando métodos listChamados, getChamado, create, update e delete), Criando o enum Status)', 'S', 27),
(183, 28, 'Criando nosso projeto CRUD - Parte 2 (Corrigindo a dependência para JSON)', '01:07:37', 'https://www.youtube.com/embed/3BN9ZNIaRnY?si=CbbbHmxOGzkpGFqp', 'Corrigindo a dependência para JSON, Utilizando o Apache Maven  3.6.3, Utilizando o ChamadoController no Postman, Testando as requisições HTTP (GET, POST, PUT e DELETE), Criando arquivo index.html utilizando a diretiva ng-app e ng-controller, Criando formulário e Tabela para Chamados, Utilizando diretivas ng-model, ng-click e ng-repeat, Implementando métodos no controller (novo, salvar, alterar, deletar, concluir, atualizarTabela e ocorreuErro), Injetando o $http no Controller', 'S', 27),
(184, 29, 'Criando nosso projeto CRUD - Parte 3 (Corrigindo problemas com Angular)', '58:47', 'https://www.youtube.com/embed/Bu-JWMyi2S4?si=Vew4zzj-09rivfDn', 'Corrigindo problemas utilizando o Angular 1.7.1, Implementando o Banco de Dados de Chamados (Utilizando o phpmyadmin para criar o banco de dados api_chamados e a tabela chamado), Criando o pacote com.crud.back.infra, Criando a interface ConexaoJDBC, Criando a classe ConexaoMysqlJDBC que implementa a interface, Implementando os métodos (getConnection, close, commit e rollback), Criando a classe ChamadoDAO e implementando os métodos (inserir, alterar, excluir, parser, listar e listarTudo)', 'S', 27),
(185, 30, 'Criando nosso projeto CRUD - Parte 4 (Otimizando o Sistema)', '40:15', 'https://www.youtube.com/embed/pWvktrsL6Ag?si=xF2z6BC7HvSU3MCS', 'Otimizando o sistema, Modificando a classe ChamadoController alterando os métodos (listChamados, getChamado, create, update e delete), Implementando o método concluir, Implementando o método concluir no controller da aplicação, realizando testes no aplicativo e verificando possíveis erros', 'S', 27),
(186, 31, 'Criando nosso projeto CRUD - Parte 5 (Corrigindo o erro timezone no jdbc)', '26:46', 'https://www.youtube.com/embed/OGt2KWiAQuo?si=hKb7trkgQ4MHOX_P', 'Corrigindo erros no código, Conexão com o banco de dados e o erro timezone no jdbc Java (useTimezone e serverTimezone). Testando a aplicação e Considerações Finais.', 'S', 27),
(187, 32, 'Verificando o erro do método concluir, últimos testes', '02:05', 'https://www.youtube.com/embed/Z1NluqHQZh8?si=6r5O9i23CBP8NCce', 'Verificando o erro do método concluir, Fazendo os últimos testes, Recado sobre o Curso de Java com Hibernate.', 'S', 27),
(188, 1, 'Introdução ao Python e Django', '23:37', 'https://www.youtube.com/embed/m9Paao40PXg?si=XEG3v2msgcSFVhac', 'O que é a linguagem Python, Instalando o Python, Instalando o PyCharm, Instalando o Django', 'S', 18),
(189, 2, 'Comentários, Variáveis, Atribuições e Função', '18:18', 'https://www.youtube.com/embed/fVuiMFZozcA?si=-vGNPaJJzW0ADmqD', 'Criando o projeto no PyCharm, Comentários, Variáveis e atribuições, Utilizando o print(), Concatenações, Declarando e utilizando função, Variável local e global', 'S', 18),
(190, 3, 'Tipos de Dados', '21:43', 'https://www.youtube.com/embed/YtN_0n7IeOw?si=R2Bfn_h0_0GRXL-8', 'Tipos de Dados (int, string, float, boolean, complex, list, tuple, dictionary), List Set, Imprimir o tipo com type, Random e Cast (Conversão de tipo)', 'S', 18),
(191, 4, 'Manipulando String e Boolean', '25:21', 'https://www.youtube.com/embed/rcJTn84Fr_w?si=bWKeAugIDNDup1AM', 'Acessando caracteres pelo índice, Minúsculas lower(), Maiúsculas upper(), Substituir caracteres replace(), Comprimento len(), Tokenização split(), Verifica se contém e não contém string ( in e not in), Utilizando o format()', 'S', 18),
(192, 5, 'Trabalhando com List', '12:07', 'https://www.youtube.com/embed/VfLgqfXqjL4?si=2fGp0-rCV5fnPkpJ', 'Criando listas, Acessando elementos da lista, Adicionar item na lista append(), Remover item da lista remove(), pop(), del, Limpar toda a lista clear(), Copiar itens de uma lista, Mesclar listas', 'S', 18),
(193, 6, 'Estrutura Condicional IF', '08:00', 'https://www.youtube.com/embed/pxiHZsFPgns?si=A_hs8Fm-TyyHTD48', 'Utilizando a estrutura condicional simples if(), Utilizando condicional simples aninhada', 'S', 18),
(194, 7, 'Estrutura Condicional Composta e Encadeada', '11:31', 'https://www.youtube.com/embed/XC1xkPPjjs4?si=EcMNorINSRJToXYl', 'Utilizando a estrutura condicional composta if - else, Estrutura condicional encadeada if - elif - else', 'S', 18),
(195, 8, 'Estrutura de Repetição FOR', '08:52', 'https://www.youtube.com/embed/0WAWHICTonw?si=ruMKafU0b0XJ2Ts2', 'Criando iterações com laço de repetição FOR, Utilizando o comando BREAK', 'S', 18),
(196, 9, 'Utilizando o INPUT', '05:33', 'https://www.youtube.com/embed/Fo7YGijNLFg?si=bMmMW8fO9QQkOX6o', 'Criando mais iteração com usuário com input() Entrada de Dados, utilizando a biblioteca os', 'S', 18),
(197, 10, 'Estrutura de Repetição WHILE', '14:29', 'https://www.youtube.com/embed/uGcuE22e3rM?si=4cvefhL3V7ur7w1r', 'Utilizando o laço de repetição while()', 'S', 18),
(198, 11, 'Trabalhando com Tuplas [Tuple]', '05:23', 'https://www.youtube.com/embed/EDkfLdOK6Fc?si=UX0mndgP2x0iTlw2', 'Manipulando tuplas, Convertendo tuplas em listas', 'S', 18),
(199, 12, 'Trabalhando com Matrizes', '08:11', 'https://www.youtube.com/embed/5GqwjB6GRCs?si=5la0NCm_1KjIukVe', 'Utilizando e Manipulando matrizes, Adicionando item na Matriz, Criando iterações na Matriz', 'S', 18),
(200, 13, 'Trabalhando com Dicionário [Dictionary]', '19:46', 'https://www.youtube.com/embed/4jj79gBTiWw?si=xEJ5GpNHyW4HXyB4', 'Criando e Manipulando os Dictionary, Adicionar item, Remover item del e pop(), Buscar um item pela chave utilizando o get(),  Criando iterações, Verifica se um valor é uma chave in, Retorna tamanho do dictionary len()', 'S', 18),
(201, 14, 'Desafio (Jogo da Adivinhação)', '10:31', 'https://www.youtube.com/embed/8nyaiwdoV5A?si=pcvCru5jGF2O80aW', 'Criar um jogo da adivinhação, onde o sistema sorteia um número e o jogador tenta adivinhar o número sorteado.', 'S', 18),
(202, 15, 'Trabalhando com Funções [Function]', '08:07', 'https://www.youtube.com/embed/gJFonVaqMCg?si=lXFFbTGRhD3Vb2Gm', 'Criando a função, utilizando a função. Utilizando funções dentro de função', 'S', 18),
(203, 16, 'Funções com Parâmetros', '12:54', 'https://www.youtube.com/embed/-AxYNXf0C_0?si=-AnEsaq0PgTJqpxf', 'Criando função com parâmetros, Argumentos arbitrários, Argumento padrão (default), Utilizando lista em função', 'S', 18),
(204, 17, 'Funções com Retorno [return]', '07:23', 'https://www.youtube.com/embed/lD8EsN5vo0c?si=e3v6k4NziDlYuu6h', 'Criando função com retorno utilizando o return, Utilizando input na função', 'S', 18),
(205, 18, 'Funções Lambda ou Anônimas', '09:15', 'https://www.youtube.com/embed/zmEeMhb2TyM?si=y_pr9whMGKZdWorc', 'Criando uma função lambda, Função lambda sem associação com variáveis, Passando função como argumento', 'S', 18),
(206, 19, 'Orientação a Objetos Parte 1', '09:08', 'https://www.youtube.com/embed/07a4_mTKKLc?si=mRf12NLGK368pZL9', 'Classes e objetos, Propriedades de uma classe, instanciando objetos, Passando valores para as propriedades, Imprimindo as propriedades', 'S', 18),
(207, 20, 'Orientação a Objetos Parte 2', '11:40', 'https://www.youtube.com/embed/FSU1Ln96g3I?si=KMQYcqAAYE3DMXLy', 'Construtor e Métodos de uma classe. Trabalhando com a classe Carro', 'S', 18),
(208, 21, 'Orientação a Objetos Parte 3', '26:30', 'https://www.youtube.com/embed/TdQulc2FZC0?si=J4V8CBjOP5G8AG7C', 'Trabalhando com herança (Classe Base, Pai, Super), (Classe Filha). Utilizando construtor e método da classe Pai', 'S', 18),
(209, 22, 'Tratamento de Erros [try-except-finally]', '11:02', 'https://www.youtube.com/embed/Twz21BClKzw?si=Iyzd8gf8i_GfTzzY', 'Trabalhando com tratamentos de erros com try-except-finally', 'S', 18),
(210, 23, 'Desafio (Gerenciador de Veículos)', '46:09', 'https://www.youtube.com/embed/-ZUPGnHLOwM?si=jxlojbPTfjzu_6tG', 'Trabalhando com o desafio de sistema de gerenciamento de veículos, utilizando a orientação a objetos.', 'S', 18),
(211, 24, 'Trabalhando com Iterators', '08:03', 'https://www.youtube.com/embed/jTCwv1bLrE4?si=WKBoH5SU62fccrPx', 'Criando objetos iteráveis iter(), criando as iterações', 'S', 18),
(212, 25, 'Trabalhando com Módulo Externo', '06:55', 'https://www.youtube.com/embed/keS5T0Z9bAM?si=eZozbdV3XH2FEtmP', 'Utilizando módulo externo, trabalhando com funções em módulo externo', 'S', 18),
(213, 26, 'Trabalhando com Datas [datetime]', '07:52', 'https://www.youtube.com/embed/gt97sJl7ViA?si=gDY--dcz3vjRlPFv', 'Trabalhando com módulo datetime, Retornando a data atual, Formato de Data, Entendendo todos os formatos %', 'S', 18),
(214, 27, 'Trabalhando com JSON Parte 1', '11:15', 'https://www.youtube.com/embed/srwZ0VyfmBw?si=2tNSlU-7DhZJmWX6', 'Importando o módulo json, Carregando JSON com o método loads(), Trabalhando com o método dumps()', 'S', 18),
(215, 28, 'Trabalhando com JSON Parte 2', '16:43', 'https://www.youtube.com/embed/Q9QGEoi3HpU?si=PZ4Tocs4uoP9x2pd', 'Criando objeto json com o método dumps(), definindo indentação, separadores e ordenando chave. Trabalhando com  dictionary, list e tuple. Trabalhando com JSON complexo (Desafio Jogador)', 'S', 18),
(216, 29, 'Trabalhando com JSON Parte 3', '16:08', 'https://www.youtube.com/embed/3weYZulfTig?si=WRM51a12XDQjtUQP', 'Lendo um arquivo externo no formato .json (Utilizando o with open()), Carregando o arquivo com método load(), Imprimindo chaves, itens, valores', 'S', 18),
(217, 30, 'Trabalhando com Arquivo Parte 1', '10:02', 'https://www.youtube.com/embed/4l4fP_7BRmc?si=vB69S7FzjHYIm5E7', 'Abrindo arquivo utilizando método open(), modo de abertura (escrita, leitura, apêndice...), Escrevendo conteúdo no arquivo utilizando o método wirte()', 'S', 18),
(218, 31, 'Trabalhando com Arquivo Parte 2', '20:14', 'https://www.youtube.com/embed/ozKW62y4Fro?si=88L7B5Z3JuSWoXry', 'Abrindo arquivo em modo leitura utilizando o método read(), Lendo linha com o método readline(), Lendo linhas com o laço FOR, Lendo linha a substituindo caractere, Fechando arquivo com o método close()', 'S', 18),
(219, 32, 'Trabalhando com Arquivo Parte 3', '09:06', 'https://www.youtube.com/embed/nSEt8vk1AlM?si=KR1iMbltVdXryfVn', 'Verificando se arquivo existe com método path.exists(), Deletando arquivo com o método remove()', 'S', 18),
(220, 33, 'Trabalhando com RegEx (Expressão Regular) Parte 1', '06:55', 'https://www.youtube.com/embed/Mn7JqzfY-4A?si=uniYhJS6R-NorhaA', 'Importando o módulo re, Utilizando o método findall() retornar todas as ocorrências em uma coleção', 'S', 18),
(221, 34, 'Trabalhando com regEx (Expressão Regular) Parte 2', '06:19', 'https://www.youtube.com/embed/IPb_xxVta4k?si=Mxdm-_ZLFWd88jPD', 'Trabalhando com o método search(), retorna a primeira ocorrência, Retornando posição inicial e final com os métodos start() e end()', 'S', 18),
(222, 35, 'Trabalhando com RegEx (Expressão Regular) Parte 3', '04:18', 'https://www.youtube.com/embed/sBcagOB7WZI?si=IbzI7blZJSuBarNr', 'Utilizando o método split(), Tokenizar texto (quebrar o texto em partes)', 'S', 18),
(223, 36, 'Trabalhando com RegEx (Expressão Regular) Parte 4', '05:20', 'https://www.youtube.com/embed/xCi9Jl9-FH4?si=utrDVIutK7Afn6yJ', 'Utilizando o método sub(), substituir caractere, texto', 'S', 18),
(224, 37, 'Banco de Dados SQLite Parte 1', '11:35', 'https://www.youtube.com/embed/fypK9eDaX1M?si=TyczNxG_bSMAqIgQ', 'Baixando e Instalando o SQLite Studio, Criando um banco de dados: agenda, Criando uma tabela: tb_contatos com os campos (N_IDCONTATO, T_NOMECONTATO, T_TELEFONECONTATO, T_EMAILCONTATO)\r\n\r\nLink para baixar o programa SQLite Studio: <a href=\"https://drive.google.com/drive/folders/1vKPv6zsp5MPNoL9NGgc3XRcP7YGyT3dz?usp=sharing\" target=\"_blank\">Baixar aqui</a>', 'S', 18),
(225, 38, 'Banco de Dados SQLite Parte 2', '21:09', 'https://www.youtube.com/embed/bspBVbAKiAQ?si=aCP5r6T2uYRQcnht', 'Importando a biblioteca sqlite3, da biblioteca sqlite3 importar Error, Criando função  que retorna conexão com o banco de dados, armazenando conexão em uma variável, Criando tabelas tb_contatos e tb_usuarios através de uma função, Fechando conexão com o banco com a função close()', 'S', 18),
(226, 39, 'Banco de Dados SQLite Parte 3', '20:23', 'https://www.youtube.com/embed/1nBA4LKLGlw?si=oEAPQ92WL0recyhX', 'Inserir registros na tabela tb_contatos, Utilizando o método execute() e o método commit()', 'S', 18),
(227, 40, 'Banco de Dados SQLite Parte 4', '07:57', 'https://www.youtube.com/embed/9U9KXOXa94k?si=TJN9z_k8QvpxBAlC', 'Deletando registro da tabela tb_contatos, utilizando a cláusula WHERE do SQL, Utilizando o método execute() e commit()', 'S', 18),
(228, 41, 'Banco de Dados SQLite Parte 5', '16:09', 'https://www.youtube.com/embed/uQcaEGIIuj0?si=thykB42w5M2fb-XK', 'Atualizando registro na tabela tb_contatos, Utilizando a cláusula WHERE do SQL, Utilizando o método execute() e commit()', 'S', 18),
(229, 42, 'Banco de Dados SQLite Parte 6', '13:48', 'https://www.youtube.com/embed/C2K5icFRGCE?si=SlAQBqmmS3T0HhWk', 'Selecionando registros da tabela tb_contatos e Selecionando um registro específico pela chave primária com cláusula WHERE, Utilizando o método fetchall(), Utilizando ORDER BY ordenar por coluna em ordem crescente e decrescente', 'S', 18),
(230, 43, 'Introdução ao Django Framework', '06:38', 'https://www.youtube.com/embed/BsmF-allWsk?si=XSA_TkwKSl5CRTU-', 'O que é o Django, Fluxo de uma Requisição no Django, A Camada MVT (Model, View, Template)', 'S', 18),
(231, 44, 'Instalação do Django', '08:48', 'https://www.youtube.com/embed/QS9mgniBTqU?si=XslUiOtj1N2l3tKy', 'Criando um ambiente virtual, Ativando e Desativando Ambiente, Instalando o Django no ambiente virtual, Verificando a Instalação', 'S', 18),
(232, 45, 'Criando o projeto no Django', '15:28', 'https://www.youtube.com/embed/2-wYyxYqHVc?si=tLty3Egj_N8F4FOy', 'Criando o projeto no ambiente virutal com django-admin (helloworld), Baixando e Instalando o VSCode, Abrindo a pasta do projeto no VSCode, Configurando o banco de dados sqlite3 utilizando o manage.py migrate, Executando o servidor local, Criando um superuser (admin)\r\n\r\nLink para baixar o instalador do VSCode: <a href=\"https://drive.google.com/drive/folders/16ttU8awwYhIwLrdoFeOGIuJYAaYbkLUj?usp=sharing\" target=\"_blank\">Baixar aqui</a>', 'S', 18),
(233, 46, 'Criando a Aplicação no Projeto helloworld', '24:23', 'https://www.youtube.com/embed/EqUCtAfZkbk?si=E4G49uhBZOa964hq', 'Criando a nossa aplicação (website) , Organizando a estrutura do projeto, Adicionando nossas aplicações no arquivo settings.py (INSTALLED_APPS), Fazendo alterações na estrutura do projeto, A Camada Model (Criando o model no arquivo models.py), Criando a classe Funcionario e os campos necessários)', 'S', 18),
(234, 47, 'Utilizando o DB Browser para SQLite3', '18:35', 'https://www.youtube.com/embed/Q1W4yPN2vhM?si=ethzlBgNTxepnErt', 'Baixando e instalando o dbbrowser, Utilizando o shell do Django, Trabalhando com ORM (Object Relational Mapp) para inserir registros na tabela tb_funcionarios\r\n\r\nLink para baixar o instalador do DB BRowser: <a href=\"https://drive.google.com/drive/folders/1wWoLjorGyYBv79y8dAKQHX4SrdvuMoms?usp=sharing\" target=\"_blank\">Baixar aqui</a>', 'S', 18),
(235, 48, 'Trabalhando com ORM (Selecionar, Deletar e Atualizar)', '18:41', 'https://www.youtube.com/embed/RB_rH9SMB4o?si=_Yy_vLfO4hM_oP37', 'Utilizando o shell do Django para trabalhar com ORM, Selecionando objetos, Utilizando critérios na seleção, Deletando objetos e Atualizando objetos', 'S', 18),
(236, 49, 'A Camada View', '17:50', 'https://www.youtube.com/embed/zmdhithnyOo?si=NhJHgkynZDNcMo_l', 'Configurando os arquivos urls.py na aplicação helloword e website, urlpatterns adicionando path (rotas) para nossa aplicação website na URLConf, Criando a view index no arquivo views.py (Utilizando função que retorna HttpResponse), Criando a rota no arquivo urls.py da aplicação website. Testando a nossa index no servidor local', 'S', 18),
(237, 50, 'Function Based Views e Class Based Views', '26:59', 'https://www.youtube.com/embed/pmNamJA3_Bg?si=vQhDEMhKJthVD-Gx', 'Criando views utilizando funções e Criando views utilizando classes, Criando função para listar funcionários (lista_funcionarios), Criando o arquivo funcionarios.html na pasta templates e na subpasta website, Criando tabela e utilizando laço for para criar iteração do list collection funcionarios, Criando classe ListaFuncionarios (utilizando ListView)', 'S', 18),
(238, 51, 'Trabalhando com FBV e CBV', '16:36', 'https://www.youtube.com/embed/4NnOyQKrJa8?si=83FQrcNtHJgLsBmq', 'Criando função para criar funcionário, Criando o arquivo forms.py (Utilizando a biblioteca forms), Criando a classe FormularioDeCriacao, Utilizando o request.POST, is_valid(), HttpResponseRedirect. Os atributos do objeto request (.scheme, .path, .method, .content_type, .GET, .POST, .FILES, .COOKIES)', 'S', 18),
(239, 52, 'Trabalhando com CBV (Class Based Views)', '22:26', 'https://www.youtube.com/embed/e4VygxFLWZM?si=08vzztnVzfAzZgSi', 'Utilizando a Class Based View (Criando e utilizando a classe FuncionarioListView), criando rota no arquivo urls.py para a ListView, Melhorando a aparência da tabela no arquivo funcionarios.html com CSS, Criando e utilizando a classe IndexTemplateView), criando a rota no arquivo urls.py para a TemplateView', 'S', 18),
(240, 53, 'Utilizando CBV\'s (UpdateView e DeleteView)', '33:48', 'https://www.youtube.com/embed/2W6sFWedtEw?si=guADgowqMlucmovd', 'Organizando a estrutura do projeto, Criando a nossa view de atualização de funcionários com UpdateView (FuncionarioUpdateView), Criando o arquivo lista.html no diretório template/website, Criando a nossa view de exclusão de funcionário com DeleteView (FuncionarioDeleteView), Criando o arquivo exclui.html no diretório template/website', 'S', 18),
(241, 54, 'Criando CBV\'s (CreateView)', '25:36', 'https://www.youtube.com/embed/wBHTCrWxJj0?si=ipmt7XhMdfYxHTQE', 'Criando a nossa view FuncionarioCreateView, Criando o arquivo cria.html no diretório template/website, Criando o arquivo forms.py e criando a classe InsereFuncionarioModel, Melhorando a aparência do formulário (Customizando Fields)', 'S', 18),
(242, 55, 'Trabalhando com Forms', '23:04', 'https://www.youtube.com/embed/5RsZ8wSYkE4?si=xdDxEYynjOArmpPw', 'Criando nossos campos na class InsereFuncionarioForm no arquivo forms.py, Campos inseridos no form com fields, Campos não estarão no form com exclude, Inserindo novos campos no form', 'S', 18),
(243, 56, 'Trabalhando com Middleware', '23:14', 'https://www.youtube.com/embed/lN3SzM593SQ?si=coJwwMKAk4oBFlRl', 'Criando a nossa middleware, Criando o arquivo middlewares.py no app helloworld, Implementando uma middleware que filtra o IP chamado FiltraIPMiddleware, Adiconando nossa middleware no arquivo settings.py, Testando a middleware', 'S', 18),
(244, 57, 'A Camada Template Parte 1', '53:33', 'https://www.youtube.com/embed/KiVVlpgQyWs?si=ktzf1nd8SoNroeLv', 'O que é um template, Conhecendo o DTL (Django Template Language), Tags e Filtros, Criando o template base.html no diretório _layouts, Renderizando o template no arquivo index.html (Deixando a aparência do sistema mais profissional)\r\n\r\nLink para baixar os arquivos estáticos (Bootstrap CSS e JS) JQuery: <a href=\"https://drive.google.com/drive/folders/197nnGH_vDN9BYpg2BIzTk-Zg_DlQ_982?usp=sharing\" target=\"_blank\">Baixar aqui</a>', 'S', 18),
(245, 58, 'A Camada Template Parte 2', '44:13', 'https://www.youtube.com/embed/p2YwG5sR1Io?si=TMo06v9E28zWywPQ', 'Utilizando template base.html no arquivo cria.html, Instalando a biblioteca widget_tweaks, Utilizando widget_tweaks para estilizar o formulário, utilizando template base.html no arquivo lista.html', 'S', 18),
(246, 59, 'A Camada Template Parte 3', '22:27', 'https://www.youtube.com/embed/qhVsvs6xqck?si=vTD3p0p_EPoGnqtQ', 'Utilizando o template base.html para estilizar o arquivo atualiza.html e exclui.html', 'S', 18),
(247, 60, 'Testando a nossa Aplicação [Tags e Filtros Customizados]', '44:40', 'https://www.youtube.com/embed/Tu0syWTiqe8?si=bIFJOwnbJ_Xp_T3B', 'Testando as rotinas (cadastrar, atualizar e excluir), Tags e Filtros Customizados (Criando o filtro primeira_letra, Criando a tag hora_atual)', 'S', 18),
(248, 61, 'Built-in-Filters (filtros e tags do Django)', '19:45', 'https://www.youtube.com/embed/AoC-3UpQ44Y?si=lURge6VSZTglYmO3', 'Conhecendo alguns filtros do framework Django, Criando um filtro que formata o campo moeda de acordo com o padrão brasileiro. Encerramento do curso.', 'S', 18),
(249, 1, 'Curso de Microsoft SQLServer (Introdução)', '12:22', 'https://www.youtube.com/embed/fVawHSLgiaQ?si=4Jk5hN6Xw60sxizM', 'Assuntos Tratados Nessa Aula: SQL (Structure Query Language), Bancos de Dados (Estrutura de um Banco de Dados), SGDBR e Tipos de Dados', 'S', 17),
(250, 2, 'Curso de Microsoft SQLServer (Preparando o Ambiente)', '21:06', 'https://www.youtube.com/embed/-cnxI0sDxKA?si=jLlv7GwfASUoy6Qz', 'Assuntos Tratados Nessa Aula: Preparando o Ambiente, Instalação do SQL Server e do SQLServer Management Studio', 'S', 17),
(251, 3, 'Curso de Microsoft SQLServer (Criando um Banco de Dados)', '25:16', 'https://www.youtube.com/embed/HzEdnfCFv0M?si=iRt8nb2kwhJsziZB', 'Assuntos Tratados Nessa Aula: Criação de um banco de dados, SQL Constraints (restrições), Normatização e Desnormatização', 'S', 17),
(252, 4, 'Curso de Microsoft SQLServer (Tabelas)', '32:00', 'https://www.youtube.com/embed/vIjA0HtiQmY?si=aWwxkgVC0XJA1YwM', 'Assuntos Tratados Nessa Aula: Criação de Tabelas, IDENTITY (Auto Increment), Alteração e Exclusão de Tabelas.', 'S', 17),
(253, 5, 'Curso de Microsoft SQLServer (Insert, Truncate, Select)', '30:04', 'https://www.youtube.com/embed/AMwhmvzvU8U?si=nSHmkMNS2XDQWFEC', 'Assuntos Tratados Nessa Aula: Inserindo Registros (INSERT INTO), TRUNCATE TABLE, Consultas Simples (SELECT FROM).', 'S', 17),
(254, 6, 'Curso de Microsoft SQLServer (Cláusula ORDER BY, Select Distinct, Cláusula WHERE)', '26:33', 'https://www.youtube.com/embed/XigWqWk3JeE?si=A0pOQNtpWtRhbLG8', 'Assuntos Tratados Nessa Aula:  Cláusula ORDER BY (Consultas com Ordenação), SELECT DISTINCT (Consultas com Valores Distintos), Cláusula WHERE (Filtrando Registros em Consultar).', 'S', 17),
(255, 7, 'Curso de Microsoft SQLServer (Operadores AND e OR, UPDATE, TOP)', '26:04', 'https://www.youtube.com/embed/5tt8YPKImi0?si=WGu7ygXGXMvty9ZY', 'Assuntos Tratados Nessa Aula: Operadores Lógicos (AND e OR), UPDATE (Atualizando Registros em uma Tabela), TOP (Especificar Números de Registros nas Consultas).', 'S', 17),
(256, 8, 'Curso de Microsoft SQLServer (DELETE, Alias com AS, Comando UNION)', '16:56', 'https://www.youtube.com/embed/HCQzj46lgkc?si=JXmPGRVGQ5M6U2Eg', 'Assuntos Tratados Nessa Aula: DELETE FROM (Excluindo Registros na Tabela), Utilizando Alias com AS (Nomeando Tabelas e Colunas), Utilizando o Comando UNION (Unir Resultados em Consultas).', 'S', 17),
(257, 9, 'Curso de Microsoft SQLServer (SELECT INTO, Funções de Agregação, Cláusula BETWEEN)', '17:58', 'https://www.youtube.com/embed/JxRA0NCHoFk?si=OYOqrmaPA8OfqtUy', 'Assuntos Tratados Nessa Aula: SELECT INTO (Criar Nova Tabela a partir de Uma Consulta), Funções Agregadas (SUM (SOMA), COUNT (CONTAR), MAX (Valor Máximo), MIN (Valor Mínimo), AVG (Média)), Utilizando BETWEEN (Consulta com Intervalos entre Valores).', 'S', 17),
(258, 10, 'Curso de Microsoft SQLServer (Cláusula Like e Not Like, JOINS (Inner e Outter)', '43:45', 'https://www.youtube.com/embed/42sUvSy7W8E?si=jN2Ws-fO6otwvf3F', 'Assuntos Tratados Nessa Aula: LIKE e NOT LIKE (Comparações em Consultas), JOINS e INNER JOIN (Consultas em Tabelas Relacionais), OUTER JOIN (LEFT e RIGHT( Consultas em Tabelas Relacionais)).', 'S', 17),
(259, 11, 'Curso de Microsoft SQLServer (Criando Índice (CREATE INDEX), Criando Regras (CREATE RULE), Backup e Restauração', '33:01', 'https://www.youtube.com/embed/72NKG9wjbS8?si=_r82d2l4onobK-XJ', 'Assuntos Tratados Nessa Aula: Revisão sobre INNER e OUTER JOIN, Índices (CREATE INDEX), Regras (CREATE RULE), Backup e Restauração do Banco de Dados.', 'S', 17),
(260, 12, 'Curso de Microsoft SQLServer (Concatenação de Strings, Funções (Strings, Collations), Funções Data e Matemática)', '01:00:21', 'https://www.youtube.com/embed/BUKRA4-m0wU?si=K5OtRxH5_uO3KZ-G', 'Assuntos Tratados Nessa Aula: Concatenação de Strings e Funções de Strings, Collation (Agrupamento de Caracteres ou Colação), Funções de Data e Matemáticas, Cláusula WITH TIES (Exibindo itens adjacentes).', 'S', 17),
(261, 13, 'Curso de Microsoft SQLServer - Parte A', '59:23', 'https://www.youtube.com/embed/lx-GvmwwhD8?si=LE0o6DLv1Zdeem4d', 'Assuntos Tratados Nessa Aula: Exemplo da Cláusula WITH TIES com Tabela Campeonato, VIEWS (Exibições) - Criar, Alterar e Excluir, Subconsultas (Subqueries) com Tabelas Derivadas, Operador EXISTS, Subconsultas (Subqueries) com Operadores SOME, ANY e ALL, CTE (Common Table Expression (Subconsultas))', 'S', 17),
(262, 13, 'Curso de Microsoft SQLServer - Parte B', '35:49', 'https://www.youtube.com/embed/aSa21bRrifs?si=Ue1sMQvB45Qmuwbs', 'Assuntos Tratados Nessa Aula: Subconsultas com Operadores (SOME e ANY), Operador (ALL), CTE (Common Table Expression) Subconsultas.', 'S', 17),
(263, 14, 'Curso de Microsoft SQLServer (Variáveis, Conversão de Tipos, IF e ELSE (Estrutura de Decisão))', '55:27', 'https://www.youtube.com/embed/col-ny816gI?si=jRCCyiBOdRvNS5Id', 'Assuntos Tratados Nessa Aula: Variáveis (Declaração a Atribuição de Valores), Conversão de Tipos de Dados com Cast e Convert, Condifional IF e ELSE (Estrutura de Decisão).', 'S', 17),
(264, 15, 'Curso de Microsoft SQLServer Case (Estrutura de Decisão), Laço de Repetição WHILE', '35:56', 'https://www.youtube.com/embed/3R-cL_FBG1E?si=wF69z23EPHa9s8Jw', 'Assuntos Tratados Nessa Aula: CASE (Estrutura de Decisão), Laço de Repetição WHILE, Exercícios.', 'S', 17),
(265, 16, 'Curso de Microsoft SQLServer Parte A (Stored Procedures -Criação, Execução e Alteração), Parâmetros de Entrada ', '26:22', 'https://www.youtube.com/embed/0p0Itfm46PA?si=ObNmSOJIj7CpE-8g', 'Assuntos Tratados Nessa Aula: Stored Procedures - (Criação e Execução), Alteração e Parâmetros de Entrada, Parâmetros de Entrada e Insert', 'S', 17),
(266, 16, 'Curso de Microsoft SQLServer Parte B (Stored Procedures (Entrada e Insert), Parâmetros de Saída (Output)', '33:33', 'https://www.youtube.com/embed/9YQrzPzJAb8?si=f7Mx53K3F6Fo8DXe', 'Assuntos Tratados Nessa Aula: Stored Procedures (Entrada e Insert), Parâmetros de Saída (OUTPUT).', 'S', 17),
(267, 17, 'Curso de Microsoft SQLServer - Funções Definidas pelo Usuário (Valor Escalar, Valor de Tabela Embutida, Valor com Várias Instruções)', '30:42', 'https://www.youtube.com/embed/bTHN9IHDCmg?si=ZYzvjs3kjlh_maoB', 'Assuntos Tratados Nessa Aula: Funções Definidas pelo Usuário (Valor Escalar), Funções Definidas pelo Usuário (Valor de Tabela Embutida), Funções Definidas pelo Usuário (Valor de Tabela com Várias Instruções)', 'S', 17),
(268, 18, 'Curso de Microsoft SQLServer - Triggers (Definição e Utilização de Gatilhos)', '44:15', 'https://www.youtube.com/embed/W2pTK9UzYIg?si=0ShYk3pNMSE9_0mp', 'Assuntos Tratados Nessa Aula: Triggers (Definição e Utilização de Gatilhos), Encerramento do Curso.', 'S', 17);

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `id_contato` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `fone` varchar(20) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `contato`
--

INSERT INTO `contato` (`id_contato`, `nome`, `email`, `fone`, `mensagem`) VALUES
(9, 'CLEITON ', 'cleitonsousamoreno@gmail.com', '(61) 99986-3495', 'Feito,  parabéns  pelo site '),
(10, 'marcos flavio da silva', 'marcos.flavio20@yahoo.com.br', '(61) 99347-6118', 'Olá \r\nmeu contato e sobre o curso que já havia me matriculado e já estava finalizando minha aula no curso de HTML, CSS, porem ao acessar a plataforma o curso pede para me matricular novamente. Os curso tem período de validade ? ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id_conteudo` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `caminho` varchar(150) NOT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `conteudo`
--

INSERT INTO `conteudo` (`id_conteudo`, `titulo`, `caminho`, `id_curso`) VALUES
(1, 'Conteúdo Programático JavaSE/EE', 'proposta de curso - javaSE-EE-esc.pdf', 14),
(3, 'Conteúdo Programático PHP 7', 'proposta de curso - php-esc.pdf', 12),
(4, 'Conteúdo Programático MySQL', 'proposta de curso - MySql-esc.pdf', 15),
(6, 'Conteúdo Programático SQLServer', 'proposta de curso - SqlServer-esc.pdf', 17),
(7, 'Conteúdo Programático de Python', 'proposta de curso - python-esc.pdf', 18),
(8, 'Conteúdo Programático de Lógica', 'proposta de curso - logica-esc.pdf', 19),
(10, 'Conteúdo Programático de Javascript', 'proposta de curso - javascript-esc.pdf', 21),
(11, 'Conteúdo Programático html5/css3', 'proposta de curso - html-css-esc.pdf', 22),
(14, 'Conteúdo Programático de Java com AngularJS', 'proposta de curso - javaEE-angularJS-esc.pdf', 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `curso` varchar(150) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `duracao` varchar(20) NOT NULL,
  `descricao` text NOT NULL,
  `embed` varchar(100) DEFAULT NULL,
  `preco` varchar(15) DEFAULT NULL,
  `ativo_curso` varchar(1) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`id_curso`, `curso`, `imagem`, `duracao`, `descricao`, `embed`, `preco`, `ativo_curso`) VALUES
(12, 'Curso de PHP 7 + MySQL + OO', 'img_php_completo.png', '22:10:40', 'Este curso ensina a programar utilizando a linguagem php, desenvolvendo soluções para sistemas web, integrando a aplicação com o banco de dados MySQL. Curso completo de php estruturado e orientado a objetos.', 'https://www.youtube.com/embed/NBwH7y37F84', '59,90', 'S'),
(14, 'Curso de Java SE/EE + MySQL', 'img_java_completo.png', '27:38:02', 'Neste curso vamos aprender a programar com a linguagem java desde os conceitos mais básicos até os avançados. Você que pretende se tornar um programador java pode contar com um curso de fácil aprendizado e linguagem clara.', 'https://www.youtube.com/embed/G9TwfOM9wdQ', '59,90', 'S'),
(15, 'Curso de Banco de Dados MySQL', 'img_mysql.png', '00:00', 'Neste curso você vai aprender desde a instalação do SGDB (Sistema de Gerenciamento do Banco de Dados), criar banco de dados, tabelas, restrições, relacionamentos e etc. Um curso completo para se tornar um profissional nesta área.', 'https://www.youtube.com/embed/yTt9UgxFgx8', '00,00', 'N'),
(17, 'Curso de Banco de Dados Microsoft SQL Server', 'img_sqlserver.png', '11:06:53', 'Neste curso vamos aprender a trabalhar com o banco de dados da Microsoft SQLServer, desde a sua instalação até os recursos mais avançados. Você pretende se tornar um profissional nesta tecnologia, aproveite!', 'https://www.youtube.com/embed/QzZvurKDkRo', '39,90', 'S'),
(18, 'Curso de Python com Django', 'django1.jpg', '17:02:25', 'Neste curso vamos aprender a programar em python, desde a instalação até recursos mais avançados. Desenvolveremos uma aplicação utilizando o banco de dados SQLite3. Também iremos trabalhar com o framework Django desenvolvendo um projeto de Gerenciamento de Usuários', 'https://www.youtube.com/embed/Pflgtf7UEkQ', '59,90', 'S'),
(19, 'Curso de Lógica de Programação', 'img_logica.png', '00:00', 'Neste curso vamos aprender a etapa mais importante na vida de um programador, a lógica de programação, conceitos iniciais de algoritmo, sequências lógicas, variáveis, entrada e saída de dados, tipos de dados, vetores, matrizes, procedimentos e funções.', 'https://www.youtube.com/embed/4Sjs2Z2reys', '00,00', 'N'),
(21, 'Curso de Javascript', 'img_javascript.png', '00:00', 'Neste curso aprenderemos a trabalhar com a linguagem javascript desde os seus fundamentos até conceitos mais avançados na área da orientação a objetos.', 'https://www.youtube.com/embed/2XsQSG-CmDc', '00,00', 'N'),
(22, 'Curso de HTML5, CSS3 e W3.CSS', 'img_html_css.png', '21:53:28', 'Neste curso você aprenderá a desenvolver páginas web, desde os conceitos fundamentais até o mais avançado, unindo a linguagem CSS para estilizar suas páginas a ní­vel profissional, adicionando efeitos avançados e responsividade.', 'https://www.youtube.com/embed/VV_Gnn_4OO8', '29,90', 'S'),
(27, 'Curso de Java com AngularJS', 'AngularJS-e-Java2-1.jpg', '22:30:30', 'O curso de AngularJS com Java é um programa abrangente projetado para capacitar desenvolvedores a dominar a integração entre o framework AngularJS e a linguagem de programação Java. Esta jornada de aprendizado aborda desde os conceitos fundamentais até as técnicas avançadas para criar aplicativos web robustos e escaláveis.', 'https://www.youtube.com/embed/iipG1Pfkql0?si=bDyQ63fTXRcGUu71', '59,90', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `titulo_download` varchar(100) DEFAULT NULL,
  `caminho` varchar(100) DEFAULT NULL,
  `id_aula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `download`
--

INSERT INTO `download` (`id_download`, `titulo_download`, `caminho`, `id_aula`) VALUES
(1, 'Arquivo 00 PHP Introdução', 'slide PHP - 00.pdf', 14),
(2, 'Arquivo 01 Preparando o Ambiente de Desenvolvimento', 'Preparando o ambiente do PHP.docx', 15),
(5, 'Arquivo 05 Criando Arquivo, Delimitadores e Comentários', 'slide PHP - 01.pdf', 20),
(6, 'Arquivo 06 Comandos de Saída, Variáveis', '[1]slide PHP - 01.pdf', 21),
(7, 'Arquivo 07 Tipos de Dados', '[2]slide PHP - 01.pdf', 22),
(8, 'Arquivo 08 Constantes, Requisição', 'slide PHP - 01.pdf', 23),
(9, 'Arquivo 09 Declarar e Utilizar Funções', 'slide PHP - 02.pdf', 24),
(10, 'Arquivo 10 Manipulando Strings', '[1]slide PHP - 02.pdf', 25),
(11, 'Arquivo 11 Manipulando Strings', '[2]slide PHP - 02.pdf', 26),
(12, 'Arquivo 12 Manipulando Números', '[3]slide PHP - 02.pdf', 27),
(13, 'Arquivo 13 Manipulando Arrays Unidimensionais', 'slide PHP - 03.pdf', 31),
(14, 'Arquivo 14 Manipulando Arrays Bidimensionais', '[1]slide PHP - 03.pdf', 32),
(15, 'Arquivo 15 Manipulando Data Hora', 'slide PHP - 04.pdf', 44),
(16, 'Arquivo 16 Manipulando Arquivo e Diretório', 'slide PHP - 04.pdf', 45),
(17, 'Arquivo 17 Manipulando Arquivo e Diretório 2', 'slide PHP - 04.pdf', 46),
(18, 'Arquivo 18 Cookies e Session', 'slide PHP - 05.pdf', 47),
(19, 'Arquivo 19 Modelando Dados', 'exercicio_login.docx', 48),
(20, 'Arquivo 20 Modelagem de Dados', 'exercicio_login.docx', 49),
(21, 'Arquivo 21 Sistema de Login', 'slide PHP - 06.pdf', 50),
(22, 'Arquivo 22 Sistema de Login 2', 'slide PHP - 06.pdf', 51),
(23, 'Arquivo 23 Sistema de Login 3', 'slide PHP - 06.pdf', 52),
(24, 'Arquivo 24 Sistema de Login 4', 'slide PHP - 06.pdf', 53),
(25, 'Arquivo 25 Projeto Final', 'slide PHP - 06.pptx', 54),
(26, 'Arquivo 26 Projeto Final', 'slide PHP - 06.pptx', 55),
(27, 'Arquivo 27 Sistema CRUD', 'slide PHP - 06.pptx', 56),
(28, 'Arquivo 28 Sistema CRUD', 'slide PHP - 06.pptx', 57),
(29, 'Arquivo 29 Sistema CRUD', 'slide PHP - 06.pptx', 58),
(30, 'Arquivo 01 PHP Introdução', 'slide PHP - 08 (POO ou MOO).pdf', 59),
(31, 'Arquivo 02 PHP OO', '[1]slide PHP - 08 (POO ou MOO).pdf', 60),
(32, 'Arquivo 03 PHP OO', '[2]slide PHP - 08 (POO ou MOO).pdf', 61),
(33, 'Arquivo 04 PHP OO', '[3]slide PHP - 08 (POO ou MOO).pdf', 62),
(34, 'Arquivo 05 PHP 7 OO', '[4]slide PHP - 08 (POO ou MOO).pdf', 63),
(35, 'Arquivo 06 OO', '[5]slide PHP - 08 (POO ou MOO).pdf', 64),
(36, 'Arquivo 07 OO', '[6]slide PHP - 08 (POO ou MOO).pdf', 65),
(37, 'Arquivo 08 OO', '[7]slide PHP - 08 (POO ou MOO).pdf', 66),
(38, 'Arquivo 09 OO', '[8]slide PHP - 08 (POO ou MOO).pdf', 67),
(39, 'Arquivo 10 OO', '[9]slide PHP - 08 (POO ou MOO).pdf', 68),
(40, 'Arquivo 11 PHP 7 OO', '[10]slide PHP - 08 (POO ou MOO).pdf', 69),
(41, 'Arquivo 12 PHP 7 OO', '[11]slide PHP - 08 (POO ou MOO).pdf', 70),
(42, 'Arquivo 12 OO MER', 'slide PHP - 09 (MER).pdf', 70),
(43, 'Arquivo 13 PHP 7 OO', '[1]slide PHP - 09 (MER).pdf', 71),
(44, 'Arquivo 13 PHP 7 MER', '[2]slide PHP - 09 (MER).pdf', 71),
(45, 'Arquivo 14 PHP 7 OO', '[12]slide PHP - 08 (POO ou MOO).pdf', 72),
(46, 'Arquivo 14 PHP 7 MER', '[3]slide PHP - 09 (MER).pdf', 72),
(47, 'Arquivo PHP 7 OO Login', '[13]slide PHP - 08 (POO ou MOO).pdf', 73),
(48, 'Arquivo PHP 7 OO MER', '[4]slide PHP - 09 (MER).pdf', 73),
(49, 'Arquivo 16 PHP 7 OO', '[14]slide PHP - 08 (POO ou MOO).pdf', 74),
(50, 'Arquivo 16 PHP 7 MER', '[5]slide PHP - 09 (MER).pdf', 74),
(51, 'Arquivo 01 MySQL', 'MySQL - Aula 01.pdf', 75),
(52, 'Arquivo 02 MySQL', '[1]MySQL - Aula 01.pdf', 76),
(53, 'Arquivo 03 MySQL', 'MySQL - Aula 02.pdf', 77),
(54, 'Arquivo 04 MySQL', 'MySQL - Aula 03.pdf', 78),
(55, 'Arquivo 05 MySQL', '[1]MySQL - Aula 03.pdf', 79),
(56, 'Arquivo 06 MySQL', '[2]MySQL - Aula 03.pdf', 80),
(57, 'Arquivo 07 MySQL', '[3]MySQL - Aula 03.pdf', 81),
(58, 'Arquivo 08 MySQL', 'MySQL - Aula 04.pdf', 82),
(59, 'Arquivo 09 MySQL', 'exercicio_criar_banco_e_tabela.docx', 83),
(60, 'Arquivo 09 MySQL 2', 'exercicio_insert.xlsx', 83),
(61, 'Arquivo 10 MySQL', '[1]MySQL - Aula 04.pdf', 84),
(62, 'Arquivo 11 MySQL', '[2]MySQL - Aula 04.pdf', 85),
(63, 'Arquivo 01 Java SE/EE', 'Curso de Java 1.pdf', 86),
(64, 'Arquivo 02 JavaSE/EE', '[1]Curso de Java 1.pdf', 87),
(65, 'Arquivo 03 Java SE/EE', 'Curso de Java 2.pdf', 88),
(66, 'Arquivo 04 Java SE/EE', '[1]Curso de Java 2.pdf', 89),
(67, 'Arquivo 05 Java SE/EE', 'Curso de Java 3.pdf', 90),
(68, 'Arquivo 06 Java SE/EE', '[1]Curso de Java 3.pdf', 91),
(69, 'Arquivo 07 Java SE/EE', '[2]Curso de Java 3.pdf', 92),
(70, 'Arquivo 08 Java SE/EE', '[3]Curso de Java 3.pdf', 93),
(71, 'Arquivo 09 Java SE/EE', 'Curso de Java 4.pdf', 94),
(72, 'Arquivo 10 Java SE/EE', '[1]Curso de Java 4.pdf', 95),
(73, 'Arquivo 11 Java SE/EE', '[2]Curso de Java 4.pdf', 97),
(74, 'Arquivo 12 Java SE/EE', '[3]Curso de Java 4.pdf', 98),
(75, 'Arquivo 13 Java SE/EE', '[4]Curso de Java 4.pdf', 99),
(76, 'Arquivo 14 Java SE/EE', 'Curso de Java 5.pdf', 100),
(77, 'Arquivo 15 Java SE/EE', '[1]Curso de Java 5.pdf', 101),
(78, 'Arquivo 16 Java SE/EE', 'Curso de Java 6.pdf', 102),
(79, 'Arquivo 17 Java SE/EE', '[1]Curso de Java 6.pdf', 103),
(80, 'Arquivo 18 Java SE/EE', 'Curso de Java 7.pdf', 104),
(81, 'Arquivo 19 Java SE/EE', '[1]Curso de Java 7.pdf', 105),
(82, 'Arquivo 20 Java SE/EE', 'Curso de Java 8.pdf', 106),
(83, 'Arquivo 21 Java SE/EE', '[1]Curso de Java 8.pdf', 107),
(84, 'Arquivo 21 Java SE/EE Threads', 'Curso de Java 9.pdf', 107),
(85, 'Arquivo 22 Java SE/EE', '[1]Curso de Java 9.pdf', 108),
(86, 'Arquivo 23 Java SE/EE', 'Curso de Java 10.pdf', 109),
(87, 'Arquivo 24 Java SE/EE', '[1]Curso de Java 10.pdf', 110),
(88, 'Arquivo 25 Java SE/EE', '[2]Curso de Java 10.pdf', 111),
(89, 'Arquivo 26 Java SE/EE', 'Curso de Java 11.pdf', 112),
(90, 'Arquivo 27 Java SE/EE', 'Curso de Java 12.pdf', 113),
(91, 'Arquivo 28 Java SE/EE', '[1]Curso de Java 12.pdf', 114),
(92, 'Arquivo 29 Java SE/EE', '[2]Curso de Java 12.pdf', 115),
(93, 'Material PHP7 OO', 'slide PHP - 08 (POO ou MOO).pdf', 139),
(94, 'Material PHP7 OO', '[15]slide PHP - 08 (POO ou MOO).pdf', 140),
(95, 'Material PHP7 OO', '[16]slide PHP - 08 (POO ou MOO).pdf', 142),
(96, 'Material PHP7 OO', '[17]slide PHP - 08 (POO ou MOO).pdf', 143),
(97, 'Material PHP7 OO', '[18]slide PHP - 08 (POO ou MOO).pdf', 144),
(98, 'Material PHP7 OO', '[19]slide PHP - 08 (POO ou MOO).pdf', 145),
(99, 'Material PHP7 OO', '[20]slide PHP - 08 (POO ou MOO).pdf', 146),
(100, 'Material PHP7 OO', '[21]slide PHP - 08 (POO ou MOO).pdf', 147),
(101, 'Material PHP7 OO', '[22]slide PHP - 08 (POO ou MOO).pdf', 148),
(102, 'Material PHP7 OO', '[23]slide PHP - 08 (POO ou MOO).pdf', 149),
(103, 'Material PHP7 OO', '[24]slide PHP - 08 (POO ou MOO).pdf', 150),
(104, 'Material PHP7 OO', '[25]slide PHP - 08 (POO ou MOO).pdf', 151),
(105, 'Material PHP7 OO', '[26]slide PHP - 08 (POO ou MOO).pdf', 152),
(106, 'Material PHP7 OO MER', '[6]slide PHP - 09 (MER).pdf', 151),
(107, 'Material PHP7 OO MER', '[7]slide PHP - 09 (MER).pdf', 152),
(108, 'Material PHP7 OO MER', '[8]slide PHP - 09 (MER).pdf', 150),
(109, 'Material PHP7 OO MER', 'slide PHP - 09 (MER).pdf', 153),
(110, 'Material PHP7 OO', '[27]slide PHP - 08 (POO ou MOO).pdf', 153),
(111, 'Material PHP7 OO', '[28]slide PHP - 08 (POO ou MOO).pdf', 154),
(112, 'Material PHP7 OO MER', '[9]slide PHP - 09 (MER).pdf', 154),
(113, 'Material PHP7 OO', '[29]slide PHP - 08 (POO ou MOO).pdf', 155),
(114, 'Material PHP7 OO MER', '[10]slide PHP - 09 (MER).pdf', 155),
(115, 'Arquivo 29 Sistema CRUD 2', 'slide PHP - 07.pptx', 58),
(116, 'Material Aula 01', 'Curso de Java 1 - (Introdução Geral).pdf', 156),
(117, 'Material Aula 02', '[1]Curso de Java 1 - (Introdução Geral).pdf', 157),
(118, 'Material Aula 03', 'Curso de Java 2 - (PrimeiroPrograma, Variáveis, Tipos e Operadores.pdf', 158),
(119, 'Material Aula 04', 'Curso de Java 4 - (Orientação a Objetos).pdf', 159),
(120, 'Material Aula 05', '[1]Curso de Java 4 - (Orientação a Objetos).pdf', 160),
(121, 'Material Aula 06', '[2]Curso de Java 4 - (Orientação a Objetos).pdf', 161),
(122, 'Material Aula 07', '[3]Curso de Java 4 - (Orientação a Objetos).pdf', 162),
(123, 'Material Aula 08', '[4]Curso de Java 4 - (Orientação a Objetos).pdf', 163),
(124, 'Material Aula 09', 'Curso de Java 8 - (Tratamento de Exceções, (try-catch-finally)).pdf', 164),
(126, 'Material Aula 10', 'Curso de Java 12 - (JDBC, Transation, Commit e Rollback).pdf', 165),
(127, 'Material Aula 11', '[1]Curso de Java 12 - (JDBC, Transation, Commit e Rollback).pdf', 166),
(128, 'Material Aula 12', '[2]Curso de Java 12 - (JDBC, Transation, Commit e Rollback).pdf', 167),
(129, 'Material Aula 13', 'Curso de Java 13 - (JavaEE (JSP e Servlets)).pdf', 168),
(130, 'Material Aula 14', 'Curso de Java 15 - (Uso de Servlets (Entendendo a Estrutura)).pdf', 169),
(131, 'Material Aula 15', 'Curso de Java 16 - (JEE (Utilizando o Padrão MVC)).pdf', 170),
(132, 'Material Aula 16', 'Curso de Java 17 - (JEE (Sessões e Cookies)).pdf', 171),
(133, 'Material Aula 17', 'Curso de Java 18 - (JEE (Integrando com o DB, Utilizando JavaBean)).pdf', 172),
(134, 'Material Aula 18', '[1]Curso de Java 18 - (JEE (Integrando com o DB, Utilizando JavaBean)).pdf', 173),
(135, 'Material Aula 19', 'Curso de Java 19 - (JEE (Acesso por Tela de Login (Autenticação Usuário))).pdf', 174),
(136, 'Material Aula 20', 'AngularJS - Aula 01.pdf', 175),
(137, 'Material Aula 21', 'AngularJS - Aula 02.pdf', 176),
(139, 'Material Aula 22', 'AngularJS - Aula 02.pdf', 177),
(140, 'Material Aula 23', 'AngularJS - Aula 03.pdf', 178),
(141, 'Material Aula 24', 'AngularJS - Aula 04.pdf', 179),
(142, 'Material Aula 25', 'AngularJS - Aula 05.pdf', 180),
(143, 'Material Aula 26', 'AngularJS - Aula 06.pdf', 181),
(144, 'Material Aula 26', 'AngularJS - Aula 07.pdf', 181),
(145, 'Material Aula 27', 'AngularJS - Aula 08.pdf', 182),
(146, 'Material Aula 27', '[1]AngularJS - Aula 08.pdf', 182),
(147, 'Material Aula 28', 'AngularJS - Aula 09.pdf', 183),
(148, 'Material Aula 28', 'AngularJS - Aula 10.pdf', 183),
(149, 'Material Aula 29', 'AngularJS - Aula 11.pdf', 184),
(150, 'Material Aula 30', 'AngularJS - Aula 12.pdf', 185),
(151, 'Material Aula 01', 'Django e Python - Aula 01.pdf', 188),
(152, 'Material Aula 02', 'Django e Python - Aula 02.pdf', 189),
(153, 'Material Aula 03', 'Django e Python - Aula 03.pdf', 190),
(154, 'Material Aula 04', 'Django e Python - Aula 04.pdf', 191),
(155, 'Material Aula 05', 'Django e Python - Aula 05.pdf', 192),
(156, 'Material Aula 06', 'Django e Python - Aula 06.pdf', 193),
(157, 'Material Aula 07', 'Django e Python - Aula 07.pdf', 194),
(158, 'Material Aula 08', 'Django e Python - Aula 08.pdf', 195),
(159, 'Material Aula 09', 'Django e Python - Aula 09.pdf', 196),
(160, 'Material Aula 10', 'Django e Python - Aula 10.pdf', 197),
(161, 'Material Aula 11', 'Django e Python - Aula 11.pdf', 198),
(162, 'Material Aula 12', 'Django e Python - Aula 12.pdf', 199),
(163, 'Material Aula 13', 'Django e Python - Aula 13.pdf', 200),
(164, 'Material Aula 14', 'Django e Python - Aula 14 (Desafio).pdf', 201),
(165, 'Material Aula 15', 'Django e Python - Aula 15.pdf', 202),
(166, 'Material Aula 16', 'Django e Python - Aula 16.pdf', 203),
(167, 'Material Aula 17', 'Django e Python - Aula 17.pdf', 204),
(168, 'Material Aula 18', 'Django e Python - Aula 18.pdf', 205),
(169, 'Material Aula 19', 'Django e Python - Aula 19.pdf', 206),
(170, 'Material Aula 20', 'Django e Python - Aula 20.pdf', 207),
(171, 'Material Aula 21', 'Django e Python - Aula 21.pdf', 208),
(172, 'Material Aula 22', 'Django e Python - Aula 22.pdf', 209),
(173, 'Material Aula 23', 'Django e Python - Aula 23 (Desafio).pdf', 210),
(174, 'Material Aula 24', 'Django e Python - Aula 24.pdf', 211),
(175, 'Material Aula 25', 'Django e Python - Aula 25.pdf', 212),
(176, 'Material Aula 26', 'Django e Python - Aula 26.pdf', 213),
(177, 'Material Aula 43', 'DJANGO Framework Tutorial.pdf', 230),
(178, 'Material Aula 44', '[1]DJANGO Framework Tutorial.pdf', 231),
(179, 'Material Aula 01', 'SQL Server 01.pdf', 249),
(181, 'Material Aula 03', 'SQL Server 02.pdf', 251),
(182, 'Material Aula 04', 'SQL Server 03.pdf', 252),
(183, 'Material Aula 05', 'SQL Server 04.pdf', 253),
(184, 'Material Aula 06', 'SQL Server 05.pdf', 254),
(185, 'Material Aula 07', 'SQL Server 06.pdf', 255),
(186, 'Material Aula 08', 'SQL Server 07.pdf', 256),
(187, 'Material Aula 09', 'SQL Server 08.pdf', 257),
(188, 'Material Aula 10', 'SQL Server 09.pdf', 258),
(189, 'Material Aula 10', 'SQL Server 10.pdf', 258),
(190, 'Material Aula 11', 'SQL Server 11.pdf', 259),
(191, 'Material Aula 12', 'SQL Server 12.pdf', 260),
(192, 'Material Aula 13', 'SQL Server 13.pdf', 261),
(193, 'Material Aula 13', '[1]SQL Server 13.pdf', 262),
(194, 'Material Aula 14', 'SQL Server 14.pdf', 263),
(195, 'Material Aula 15', 'SQL Server 15.pdf', 264),
(196, 'Material Aula 16', 'SQL Server 16.pdf', 265),
(197, 'Material Aula 16', '[1]SQL Server 16.pdf', 266),
(198, 'Material Aula 17', 'SQL Server 17.pdf', 267),
(199, 'Material Aula 18', 'SQL Server 18.pdf', 268);

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicio`
--

CREATE TABLE `exercicio` (
  `id_exercicio` int(11) NOT NULL,
  `id_aula` int(11) DEFAULT NULL,
  `exercicio` varchar(100) NOT NULL,
  `data_publicacao` date DEFAULT curdate(),
  `hora_publicacao` time DEFAULT curtime(),
  `ativo_exercicio` varchar(1) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `exercicio`
--

INSERT INTO `exercicio` (`id_exercicio`, `id_aula`, `exercicio`, `data_publicacao`, `hora_publicacao`, `ativo_exercicio`) VALUES
(1, 20, 'delimitadores.php', '2021-07-04', '21:29:41', 'S'),
(2, 21, 'comandos_de_saida.php', '2021-07-04', '22:23:54', 'S'),
(5, 21, 'variaveis.php', '2021-07-12', '20:51:55', 'S'),
(6, 22, 'tipos_de_dados.php', '2021-07-12', '21:49:36', 'S'),
(7, 23, 'constantes.php', '2021-07-12', '22:58:45', 'S'),
(8, 23, 'funcao.php', '2021-07-12', '22:58:57', 'S'),
(9, 23, 'requisita_funcao.php', '2021-07-12', '22:59:05', 'S'),
(10, 24, 'funcoes.php', '2021-07-13', '14:14:34', 'S'),
(11, 25, 'strings.php', '2021-07-13', '17:42:30', 'S'),
(12, 26, '[1]strings.php', '2021-07-13', '19:29:31', 'S'),
(13, 27, 'numeros.php', '2021-07-13', '20:52:05', 'S'),
(14, 31, 'arrays.php', '2021-07-19', '14:32:07', 'S'),
(15, 32, 'arrays_multidimensionais.php', '2021-07-19', '15:14:38', 'S'),
(16, 32, '[1]funcoes.php', '2021-07-19', '15:14:50', 'S'),
(17, 44, 'data_hora.rar', '2021-09-04', '23:09:11', 'S'),
(18, 45, 'formulario.rar', '2021-09-04', '23:52:05', 'S'),
(19, 45, 'upload.rar', '2021-09-04', '23:52:17', 'S'),
(20, 46, 'arquivo_diretorio.rar', '2021-09-05', '01:13:48', 'S'),
(21, 46, '04-php.rar', '2021-09-05', '01:16:14', 'S'),
(22, 47, '05-php.rar', '2021-09-06', '16:47:54', 'S'),
(23, 48, 'script_sql.rar', '2021-09-06', '17:09:35', 'S'),
(24, 49, '[1]script_sql.rar', '2021-09-06', '17:17:43', 'S'),
(25, 50, '06-php.rar', '2021-09-06', '21:19:32', 'S'),
(26, 51, '[1]06-php.rar', '2021-09-06', '21:31:14', 'S'),
(27, 52, '[2]06-php.rar', '2021-09-06', '21:57:59', 'S'),
(28, 53, '[3]06-php.rar', '2021-09-06', '22:34:48', 'S'),
(29, 54, '07-php.rar', '2021-09-07', '21:41:36', 'S'),
(30, 55, '[1]07-php.rar', '2021-09-07', '23:03:21', 'S'),
(31, 56, '[4]06-php.rar', '2021-09-12', '16:28:57', 'S'),
(32, 57, '[5]06-php.rar', '2021-09-12', '16:33:22', 'S'),
(33, 56, '[2]script_sql.rar', '2021-09-12', '18:29:01', 'S'),
(34, 58, '[6]06-php.rar', '2021-09-12', '19:26:32', 'S'),
(35, 60, 'poo_2.rar', '2021-09-16', '14:43:17', 'S'),
(36, 61, 'poo_3.rar', '2021-09-16', '15:00:43', 'S'),
(37, 62, 'poo_4.rar', '2021-09-16', '15:19:59', 'S'),
(38, 63, 'poo_5.rar', '2021-09-16', '15:27:38', 'S'),
(39, 64, 'poo_6.rar', '2021-09-19', '16:05:25', 'S'),
(40, 65, 'poo_7.rar', '2021-09-19', '16:18:04', 'S'),
(41, 66, 'poo_8.rar', '2021-09-19', '16:38:49', 'S'),
(42, 67, 'poo_9.rar', '2021-09-19', '16:50:53', 'S'),
(43, 68, 'poo_10.rar', '2021-09-19', '17:19:58', 'S'),
(44, 69, 'poo_11.rar', '2021-09-19', '17:47:54', 'S'),
(45, 70, 'poo_12.rar', '2021-09-23', '13:24:57', 'S'),
(46, 71, 'poo_13.rar', '2021-09-23', '13:57:51', 'S'),
(47, 72, 'poo_14.rar', '2021-09-23', '14:34:24', 'S'),
(48, 73, 'poo_15.rar', '2021-09-24', '11:27:41', 'S'),
(49, 74, 'poo_16.rar', '2021-09-24', '11:44:53', 'S'),
(50, 81, 'scripts sql.rar', '2021-10-04', '11:02:40', 'S'),
(51, 83, 'exercicio_criar_banco_e_tabela.docx', '2021-10-04', '20:36:09', 'S'),
(52, 83, 'exercicio_insert.xlsx', '2021-10-04', '20:36:22', 'S'),
(53, 116, 'Curso HTML e CSS.rar', '2022-09-23', '16:12:46', 'S'),
(54, 117, '[1]Curso HTML e CSS.rar', '2022-09-23', '16:15:33', 'S'),
(55, 118, '[2]Curso HTML e CSS.rar', '2022-09-23', '16:19:32', 'S'),
(56, 119, '[3]Curso HTML e CSS.rar', '2022-09-23', '16:51:45', 'S'),
(57, 120, '[4]Curso HTML e CSS.rar', '2022-09-23', '22:14:20', 'S'),
(58, 121, '[5]Curso HTML e CSS.rar', '2022-09-24', '14:25:24', 'S'),
(59, 122, '[6]Curso HTML e CSS.rar', '2022-09-24', '20:15:40', 'S'),
(60, 123, '[7]Curso HTML e CSS.rar', '2022-09-26', '15:26:09', 'S'),
(61, 124, '[8]Curso HTML e CSS.rar', '2022-09-27', '00:11:23', 'S'),
(62, 125, '[9]Curso HTML e CSS.rar', '2022-09-29', '15:42:29', 'S'),
(63, 126, '[10]Curso HTML e CSS.rar', '2022-09-29', '16:15:42', 'S'),
(64, 127, '[11]Curso HTML e CSS.rar', '2022-09-29', '16:39:44', 'S'),
(65, 128, '[12]Curso HTML e CSS.rar', '2022-09-29', '17:08:23', 'S'),
(66, 129, '[13]Curso HTML e CSS.rar', '2022-10-03', '13:16:01', 'S'),
(67, 130, '[14]Curso HTML e CSS.rar', '2022-10-03', '13:27:49', 'S'),
(68, 131, 'Projeto.rar', '2022-10-03', '13:30:24', 'S'),
(69, 132, 'webapps.rar', '2022-10-05', '02:23:21', 'S'),
(71, 133, '[2]webapps.rar', '2022-10-05', '02:43:48', 'S'),
(72, 134, '[3]webapps.rar', '2022-10-05', '02:46:09', 'S'),
(73, 135, '[1]webapps.rar', '2022-10-16', '13:54:59', 'S'),
(77, 136, '[4]webapps.rar', '2022-10-29', '12:27:42', 'S'),
(78, 137, '[5]webapps.rar', '2022-10-29', '13:09:59', 'S'),
(79, 138, '[6]webapps.rar', '2022-10-31', '13:11:16', 'S'),
(80, 140, '[1]poo_2.rar', '2022-10-31', '14:01:52', 'S'),
(81, 142, '[1]poo_3.rar', '2022-10-31', '14:07:46', 'S'),
(82, 143, '[1]poo_4.rar', '2022-10-31', '14:11:01', 'S'),
(83, 144, '[1]poo_5.rar', '2022-10-31', '14:15:37', 'S'),
(84, 145, '[1]poo_6.rar', '2022-10-31', '14:17:41', 'S'),
(85, 146, '[1]poo_7.rar', '2022-10-31', '14:21:15', 'S'),
(86, 147, '[1]poo_8.rar', '2022-10-31', '14:23:56', 'S'),
(88, 148, '[1]poo_9.rar', '2022-10-31', '14:28:04', 'S'),
(89, 149, '[1]poo_10.rar', '2022-10-31', '14:30:36', 'S'),
(90, 150, '[1]poo_11.rar', '2022-10-31', '14:34:22', 'S'),
(91, 151, '[1]poo_12.rar', '2022-10-31', '14:36:33', 'S'),
(92, 152, '[1]poo_13.rar', '2022-10-31', '14:41:30', 'S'),
(93, 153, '[1]poo_14.rar', '2022-10-31', '14:50:41', 'S'),
(94, 154, '[1]poo_15.rar', '2022-10-31', '14:53:48', 'S'),
(95, 155, '[1]poo_16.rar', '2022-10-31', '14:56:45', 'S'),
(96, 251, 'SQLQuery1.sql', '2024-06-09', '18:09:29', 'S'),
(97, 251, 'SQLQuery2.sql', '2024-06-09', '18:09:47', 'S'),
(98, 252, 'SQLQuery3.sql', '2024-06-09', '18:18:59', 'S'),
(99, 253, 'SQLQuery4.sql', '2024-06-09', '18:26:47', 'S'),
(100, 254, 'SQLQuery5.sql', '2024-06-09', '18:34:33', 'S'),
(101, 255, 'SQLQuery6.sql', '2024-06-09', '18:39:15', 'S'),
(102, 256, 'SQLQuery7.sql', '2024-06-09', '18:43:14', 'S'),
(103, 257, 'SQLQuery8.sql', '2024-06-09', '18:48:31', 'S'),
(104, 258, 'SQLQuery9.sql', '2024-06-09', '19:01:16', 'S'),
(105, 259, 'SQLQuery10.sql', '2024-06-09', '20:25:43', 'S'),
(106, 259, 'SQLQuery11_a.sql', '2024-06-09', '20:26:01', 'S'),
(107, 259, 'SQLQuery11_b.sql', '2024-06-09', '20:26:21', 'S'),
(108, 260, 'SQLQuery12_a.sql', '2024-06-09', '20:36:42', 'S'),
(109, 260, 'SQLQuery12_b.sql', '2024-06-09', '20:36:58', 'S'),
(110, 260, 'SQLQuery12_c.sql', '2024-06-09', '20:37:11', 'S'),
(111, 261, 'SQLQuery13_a.sql', '2024-06-09', '21:07:56', 'S'),
(112, 262, 'SQLQuery13_b.sql', '2024-06-09', '21:13:36', 'S'),
(113, 263, 'SQLQuery14.sql', '2024-06-09', '22:06:03', 'S'),
(114, 264, 'SQLQuery15.sql', '2024-06-09', '22:20:20', 'S'),
(115, 265, 'SQLQuery16_a.sql', '2024-06-09', '22:39:32', 'S'),
(116, 266, 'SQLQuery16_b.sql', '2024-06-09', '22:43:09', 'S'),
(117, 267, 'SQLQuery17.sql', '2024-06-09', '22:49:04', 'S'),
(118, 268, 'SQLQuery18.sql', '2024-06-09', '22:52:29', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `forum`
--

CREATE TABLE `forum` (
  `id_forum` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `data_forum` date DEFAULT curdate(),
  `hora_forum` time DEFAULT curtime(),
  `ativo_forum` char(1) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `forum`
--

INSERT INTO `forum` (`id_forum`, `titulo`, `mensagem`, `data_forum`, `hora_forum`, `ativo_forum`) VALUES
(5, 'Programador Front-end, Quais Tecnologias Eu Devo Dominar?', 'Para me tornar um programador front-end quais as tecnologias que devo dominar? Quais as principais exigidas no mercado de trabalho?', '2023-04-05', '13:32:39', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `informacao`
--

CREATE TABLE `informacao` (
  `id_informacao` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `informacao` text NOT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `informacao`
--

INSERT INTO `informacao` (`id_informacao`, `titulo`, `informacao`, `id_curso`) VALUES
(1, 'Sobre a Linguagem Java SE/EE', 'Java SE contêm os recursos básicos (java.lang, java.io, java.math, java.net, java.util, etc...). É normalmente por onde deve-se começar o aprendizado da linguagem. Java EE é indicado para um uso mais robusto. Aplicações de larga escala, sistemas distribuídos, etc. Possui os recursos básicos (JAVA SE), obviamente, e recursos extras como bibliotecas para acesso a bancos de dados (JDBC, JPA), APIs diversas (JMS, RMI), Java Server Pages, servlets, portlets, etc.', 14),
(2, 'Sobre a Linguagem PHP 7', 'O PHP 7 foi lançado em dezembro de 2015 e trouxe consigo uma grande evolução em termos de velocidade para o PHP. Ele consegue ser até duas vezes mais rápido que o PHP 5.6 e há uma melhora significativa no uso de memória. Ótima linguagem para o desenvolvimento de sistemas web integrando com diversos bancos de dados.\r\nPHP 7 com Orientação a Objeto é ideal para você que deseja conhecer os conceitos da programação orientada a objetos no PHP, a fim de adquirir a base necessária para começar a programar com o uso de frameworks. Você estudará objetos, classes e seus elementos, métodos mágicos do PHP e os quatro pilares da programação orientada a objetos: abstração, herança, polimorfismo e encapsulamento. Também estudará a visibilidade de métodos e classes e o uso de namespaces, e as ferramentas para autoload que pertecem à  linguagem PHP.', 12),
(4, 'Sobre o Banco de Dados MySQL', 'O MySQL é um sistema de gerenciamento de banco de dados, que utiliza a linguagem SQL como interface. É atualmente um dos sistemas de gerenciamento de bancos de dados mais populares da Oracle Corporation, com mais de 10 milhões de instalações pelo mundo.', 15),
(5, 'Sobre o Banco de Dados SQLServer', 'O Microsoft SQL Server é um sistema gerenciador de Banco de dados relacional desenvolvido pela Sybase em parceria com a Microsoft. Esta parceria durou até 1994, com o lançamento da versão para Windows NT e desde então a Microsoft mantêm a manutenção do produto.', 17),
(6, 'Sobre a Linguagem Python e Django', 'Python é uma linguagem de programação de alto ní­vel, interpretada de script, imperativa, orientada a objetos, funcional, de tipagem dinâmica e forte. Foi lançada por Guido van Rossum em 1991.', 18),
(8, 'Sobre a Lógica de Programação', 'Programação lógica é um paradigma de programação que faz uso da lógica matemática. John McCarthy [1958] foi o primeiro a publicar uma proposta de uso da lógica matemática para programação.\r\n', 19),
(10, 'Sobre a Linguagem Javascript', 'JavaScript é uma linguagem de programação interpretada estruturada, de script em alto nível com tipagem dinâmica fraca e multiparadigmada. Juntamente com HTML e CSS, o JavaScript é uma das três principais tecnologias da World Wide Web.', 21),
(12, 'Sobre a Linguagem HTML e CSS', 'HTML abreviação para a expressão inglesa HyperText Markup Language, que significa: \"Linguagem de Marcação de Hipertexto\" é uma linguagem de marcação utilizada na construção de páginas na Web. Documentos HTML podem ser interpretados por navegadores. Cascading Style Sheets é um mecanismo para adicionar estilo a um documento web. O código CSS pode ser aplicado diretamente nas tags ou ser inserido entre a abertura e fechamento da tag style ou ser escrito em documento externo e linkado com o documento principal html.', 22),
(16, 'Sobre o AngularJS comJava', 'AngularJS é um framework JavaScript código aberto, mantido pelo Google, que auxilia na execução de single-page applications. Seu objetivo é aumentar aplicativos que podem ser acessados por um navegador web, foi construído sob o padrão model-view-view-model (MVVM), em um esforço para facilitar tanto o desenvolvimento quanto o teste dos aplicativos.\r\n\r\nA biblioteca lê o HTML que contém atributos especiais e então executa a diretiva na qual esta tag pertence, e faz a ligação entre a apresentação e seu modelo, representado por variáveis JavaScript comuns. O valor dessas variáveis JavaScript podem ser setadas manualmente, ou via um recurso JSON estático ou dinâmico.', 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `caminho` varchar(100) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `material`
--

INSERT INTO `material` (`id_material`, `titulo`, `caminho`, `id_curso`) VALUES
(1, 'Material de PHP', 'PHP Tutorial.pdf', 12),
(6, 'Material de MySQL', 'MySQL.pdf', 15),
(7, 'Material de Java', 'Java e Orientações a Objetos.pdf', 14),
(8, 'Material de HTML e CSS', 'HTML5 e CSS Tutorial.pdf', 22),
(9, 'Material Java com AngularJS', 'AngularJS na Prática.pdf', 27),
(10, 'Material Python com Django', 'Aprenda Python Básico - Rápido e Fácil de entender ( PDFDrive ).pdf', 18),
(11, 'Material Microsoft SQLServer', 'MicrosoftSQLServer7.pdf', 17);

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `data_matricula` date DEFAULT curdate(),
  `hora_matricula` time DEFAULT curtime(),
  `ativo_matricula` varchar(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `id_curso`, `id_aluno`, `data_matricula`, `hora_matricula`, `ativo_matricula`) VALUES
(3, NULL, NULL, '2021-07-16', '14:01:03', 'S'),
(8, NULL, NULL, '2021-09-16', '16:57:04', 'S'),
(9, NULL, NULL, '2021-09-25', '15:17:01', 'S'),
(17, 18, 29, '2022-09-12', '11:03:33', 'S'),
(18, 15, 29, '2022-09-12', '11:03:53', 'S'),
(19, 14, 29, '2022-09-12', '11:04:07', 'S'),
(20, NULL, 29, '2022-09-12', '11:04:19', 'S'),
(21, 12, 29, '2022-09-12', '11:04:30', 'S'),
(22, NULL, 18, '2022-09-13', '16:01:50', 'S'),
(27, 14, NULL, '2023-04-17', '02:09:48', 'S'),
(37, 18, 37, '2023-12-21', '00:48:54', 'S'),
(38, 12, 35, '2023-12-22', '17:25:48', 'S'),
(39, 22, 37, '2023-12-22', '19:43:31', 'S'),
(40, 22, 35, '2023-12-22', '19:44:09', 'S'),
(44, 22, 42, '2024-05-29', '21:15:34', 'S'),
(46, 12, 42, '2024-05-29', '21:16:27', 'S'),
(47, 18, 43, '2024-06-02', '21:55:07', 'S'),
(48, 14, 43, '2024-06-02', '21:55:32', 'S'),
(49, 27, 43, '2024-06-02', '21:55:52', 'S'),
(50, 12, 43, '2024-06-02', '21:56:19', 'S'),
(51, 17, 18, '2024-06-09', '17:35:22', 'S'),
(52, 14, 18, '2024-06-15', '12:35:40', 'S'),
(53, 14, 45, '2024-06-22', '22:37:23', 'S'),
(54, 17, 47, '2024-06-25', '12:16:23', 'S'),
(55, 14, 47, '2024-06-25', '12:16:39', 'S'),
(56, 22, 49, '2024-06-26', '18:45:58', 'S'),
(57, 22, 50, '2024-07-11', '19:33:33', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mural`
--

CREATE TABLE `mural` (
  `id_mural` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `data_mural` date DEFAULT curdate(),
  `hora_mural` time DEFAULT curtime(),
  `id_aula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `mural`
--

INSERT INTO `mural` (`id_mural`, `titulo`, `mensagem`, `data_mural`, `hora_mural`, `id_aula`) VALUES
(6, 'Curso de HTML 5, CSS 3 e W3.CSS', 'Programa interfaces de Web e ferramentas de edição de imagem. Executa a manutenção dos sistemas, fazendo eventuais correções necessárias. Desenvolve trabalhos de montagem, depuração e testes de programas, executando serviços de manutenção nos programas já desenvolvidos.', '2023-04-05', '13:28:11', 116);

-- --------------------------------------------------------

--
-- Estrutura para tabela `resposta`
--

CREATE TABLE `resposta` (
  `id_resposta` int(11) NOT NULL,
  `resposta` text DEFAULT NULL,
  `data_resposta` date DEFAULT curdate(),
  `hora_resposta` time DEFAULT curtime(),
  `id_mural` int(11) DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `resposta`
--

INSERT INTO `resposta` (`id_resposta`, `resposta`, `data_resposta`, `hora_resposta`, `id_mural`, `id_aluno`) VALUES
(1, 'Beleza, obrigadão. Claro que não vou desperdiçar essa oportunidade!', '2021-07-04', '21:52:16', NULL, 18),
(2, 'Quanto ganha em média um profissional nessa área?', '2023-04-05', '13:29:27', 6, 18);

-- --------------------------------------------------------

--
-- Estrutura para tabela `resposta_forum`
--

CREATE TABLE `resposta_forum` (
  `id_resposta` int(11) NOT NULL,
  `resposta` text NOT NULL,
  `data_resposta` date DEFAULT curdate(),
  `hora_resposta` time DEFAULT curtime(),
  `id_forum` int(11) DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `resposta_forum`
--

INSERT INTO `resposta_forum` (`id_resposta`, `resposta`, `data_resposta`, `hora_resposta`, `id_forum`, `id_aluno`) VALUES
(1, 'Melhorou a performance e velocidade de processamento, maior aproveitamento da memória ram e diversas inovações em relação a orientação a objetos.', '2021-07-04', '21:53:15', NULL, 18),
(2, 'Acredito ter melhorado a performance e o desempenho', '2021-11-16', '19:27:01', NULL, 18),
(3, 'HTML 5, CSS 3, Javascript, Biblioteca JQuery e Bootstrap, acredito que estas são as principais.', '2023-04-05', '13:34:37', 5, 18);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tutor`
--

CREATE TABLE `tutor` (
  `id_tutor` int(11) NOT NULL,
  `nome_tutor` varchar(20) NOT NULL,
  `sobrenome_tutor` varchar(20) NOT NULL,
  `email_tutor` varchar(100) NOT NULL,
  `telefone_tutor` varchar(20) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `tutor`
--

INSERT INTO `tutor` (`id_tutor`, `nome_tutor`, `sobrenome_tutor`, `email_tutor`, `telefone_tutor`, `foto`) VALUES
(19, 'Anderson', 'Henrique', 'a3tech.ead@gmail.com', '(79) 99831-8862', 'eu.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tutor_curso`
--

CREATE TABLE `tutor_curso` (
  `id_tutor_curso` int(11) NOT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `id_tutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `tutor_curso`
--

INSERT INTO `tutor_curso` (`id_tutor_curso`, `id_curso`, `id_tutor`) VALUES
(1, 12, NULL),
(2, 14, NULL),
(3, 12, 19),
(4, NULL, 19),
(5, NULL, 19),
(6, NULL, 19),
(8, 14, 19),
(9, 22, 19),
(10, 27, 19),
(11, 18, 19),
(12, 17, 19);

-- --------------------------------------------------------

--
-- Estrutura para tabela `uf`
--

CREATE TABLE `uf` (
  `id_uf` int(11) NOT NULL,
  `sigla` varchar(2) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `uf`
--

INSERT INTO `uf` (`id_uf`, `sigla`, `descricao`) VALUES
(1, 'AC', 'Acre'),
(2, 'AL', 'Alagoas'),
(3, 'AP', 'Amapá'),
(4, 'AM', 'Amazonas'),
(5, 'BA', 'Bahia'),
(6, 'CE', 'Ceará'),
(7, 'DF', 'Distrito Federal'),
(8, 'ES', 'Espírito Santo'),
(9, 'GO', 'Goiás'),
(10, 'NA', 'Maranhão'),
(11, 'MT', 'Mato Grosso'),
(12, 'MS', 'Mato Grosso do Sul'),
(13, 'MG', 'Minas Gerais'),
(14, 'PA', 'Pará'),
(15, 'PB', 'Paraíba'),
(16, 'PR', 'Paraná'),
(17, 'PE', 'Pernambuco'),
(18, 'PI', 'Piauí'),
(19, 'RJ', 'Rio de Janeiro'),
(20, 'RN', 'Rio Grande do Norte'),
(21, 'RS', 'Rio Grande do Sul'),
(22, 'RO', 'Rondônia'),
(23, 'RR', 'Roraima'),
(24, 'SC', 'Santa Catarina'),
(25, 'SP', 'São Paulo'),
(26, 'SE', 'Sergipe'),
(27, 'TO', 'Tocantins');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `id_uf` (`id_uf`);

--
-- Índices de tabela `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`id_aula`),
  ADD KEY `fk_curso_aula` (`id_curso`);

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices de tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id_conteudo`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Índices de tabela `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`),
  ADD KEY `fk_download_aula` (`id_aula`);

--
-- Índices de tabela `exercicio`
--
ALTER TABLE `exercicio`
  ADD PRIMARY KEY (`id_exercicio`),
  ADD KEY `fk_exercicio_aula` (`id_aula`);

--
-- Índices de tabela `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id_forum`);

--
-- Índices de tabela `informacao`
--
ALTER TABLE `informacao`
  ADD PRIMARY KEY (`id_informacao`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Índices de tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`),
  ADD KEY `fk_material_curso` (`id_curso`);

--
-- Índices de tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `fk_matricula_curso` (`id_curso`),
  ADD KEY `fk_matricula_aluno` (`id_aluno`);

--
-- Índices de tabela `mural`
--
ALTER TABLE `mural`
  ADD PRIMARY KEY (`id_mural`),
  ADD KEY `id_aula` (`id_aula`);

--
-- Índices de tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`id_resposta`),
  ADD KEY `fk_resposta_comentario` (`id_mural`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices de tabela `resposta_forum`
--
ALTER TABLE `resposta_forum`
  ADD PRIMARY KEY (`id_resposta`),
  ADD KEY `id_forum` (`id_forum`,`id_aluno`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices de tabela `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id_tutor`);

--
-- Índices de tabela `tutor_curso`
--
ALTER TABLE `tutor_curso`
  ADD PRIMARY KEY (`id_tutor_curso`),
  ADD KEY `fk_curso` (`id_curso`),
  ADD KEY `fk_tutor` (`id_tutor`);

--
-- Índices de tabela `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`id_uf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `aula`
--
ALTER TABLE `aula`
  MODIFY `id_aula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id_conteudo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de tabela `exercicio`
--
ALTER TABLE `exercicio`
  MODIFY `id_exercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de tabela `forum`
--
ALTER TABLE `forum`
  MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `informacao`
--
ALTER TABLE `informacao`
  MODIFY `id_informacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `mural`
--
ALTER TABLE `mural`
  MODIFY `id_mural` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `id_resposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `resposta_forum`
--
ALTER TABLE `resposta_forum`
  MODIFY `id_resposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id_tutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `tutor_curso`
--
ALTER TABLE `tutor_curso`
  MODIFY `id_tutor_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `uf`
--
ALTER TABLE `uf`
  MODIFY `id_uf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id_uf`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `aula`
--
ALTER TABLE `aula`
  ADD CONSTRAINT `fk_curso_aula` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `conteudo`
--
ALTER TABLE `conteudo`
  ADD CONSTRAINT `conteudo_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `download`
--
ALTER TABLE `download`
  ADD CONSTRAINT `fk_download_aula` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id_aula`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `exercicio`
--
ALTER TABLE `exercicio`
  ADD CONSTRAINT `fk_exercicio_aula` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id_aula`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `informacao`
--
ALTER TABLE `informacao`
  ADD CONSTRAINT `informacao_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `fk_material_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_matricula_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_matricula_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `mural`
--
ALTER TABLE `mural`
  ADD CONSTRAINT `mural_ibfk_1` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id_aula`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `fk_resposta_comentario` FOREIGN KEY (`id_mural`) REFERENCES `mural` (`id_mural`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `resposta_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `resposta_forum`
--
ALTER TABLE `resposta_forum`
  ADD CONSTRAINT `resposta_forum_ibfk_1` FOREIGN KEY (`id_forum`) REFERENCES `forum` (`id_forum`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `resposta_forum_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Restrições para tabelas `tutor_curso`
--
ALTER TABLE `tutor_curso`
  ADD CONSTRAINT `fk_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tutor` FOREIGN KEY (`id_tutor`) REFERENCES `tutor` (`id_tutor`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
