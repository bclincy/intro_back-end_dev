<?php
error_reporting(E_ALL | E_STRICT);

/**
 * Setup autoloading
 */
require __DIR__ . '/../../../app/vendor/autoload.php';
$charset = 'utf8';
$dsn = sprintf('mysql:host=%s;dbname=%s;charset=%s', $_ENV['MYSQL_HOST'], $_ENV['MYSQL_DATABASE'], $charset);
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
try {
     /**
      * $db pdo
      */
     $db = new PDO($dsn, $_ENV['MYSQL_USER'], $_ENV['MYSQL_PASSWORD'], $options);
} catch (\PDOException $e) {
     throw new \PDOException($e->getMessage(), (int)$e->getCode());
}

function sports(pdo $db, array $filter = null): string 
{
     $stmt = $db->query('SELECT * FROM sports');
     $results = $stmt->fetchAll();
     
     return json_encode($results);
}

function index (): string 
{
     header('WWW-Authenticate: Negotiate');
     header('WWW-Authenticate: NTLM', false);
     header("HTTP/1.1 401 Unauthorized");
     $data = [
          'code' => 401,
          'msg' => 'Authorized User',
          'error' => 'Unauthorized data Access',
     ];

     return json_encode($data);
}

function employees(pdo $db, array $filter = null): string 
{
     $stmt = $db->query('SELECT * FROM employees');
     $results = $stmt->fetchAll();
     
     return json_encode($results);
}

function getEmployeeAddresses(array $employee): ?array 
{

}

$display = $_REQUEST['display'] ?? null;
switch ($display) {
     case 'sports':
          echo sports($db);
          break;
     case 'employees':
          echo employees($db);
          break;
     
     default:
          echo index();
          break;
}

// $sql = 'SELECT * FROM sports';
// $stmt = $db->query($sql);
// $rows = $stmt->fetchAll();

// print_r($rows);
// $faker = Faker\Factory::create();

// echo $faker->name;
// echo '<br />';
// echo $faker->address;
// echo '<br />';
// echo $faker->text;
// $foo = new \App\AddressBook\Foo();

// echo $foo->getName();