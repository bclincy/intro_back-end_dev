<?php
require __DIR__ . '/../../app/vendor/autoload.php';
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
