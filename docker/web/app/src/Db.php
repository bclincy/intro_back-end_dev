<?php

namespace App\AddressBook;

class Db extends PDO
{
    public function __construct()
    {
        $charset = 'utf8';
        $dns = sprintf('mysql:host=%s;dbname=%s;charset=%s', $_ENV['MYSQL_HOST'], $_ENV['MYSQL_DATABASE'], $charset);
        parent::__construct($dns, $_ENV['MYSQL_USER'], $_ENV['MYSQL_PASSWORD']);
        try 
        { 
            $this->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
        }
        catch (PDOException $e) 
        {
            die($e->getMessage());
        }
    }

    public function query(string $query) {
        $result = parent::query($query);
        
        return($result);
    }
    
}