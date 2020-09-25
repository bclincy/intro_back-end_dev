<?php

namespace App\AddressBook;

class Foo
{
    public function getName():string 
    {
        return 'Nginx PHP MySQL';
    }

    public function downloadImg(string $url, string $name, string $path = __DIR__ . '/../../public/finalproject/images'): bool 
    {
        $saveTo = sprintf('%s/%s.png', $path, $name);
        
        $ch = curl_init ($url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
        $raw = curl_exec($ch);
        curl_close ($ch);
        if (file_exists($saveTo) === true){
            unlink($saveTo);
        }
        $fp = fopen($saveTo,'w+');
        fwrite($fp, $raw);
        // fclose($fp);
        
        return file_exists($saveTo); 
    }

    public function format_phone_us($phone) {
        // note: making sure we have something
        // if(!isset($phone{3})) { return ''; }
        // note: strip out everything but numbers 
        $phone = preg_replace('/[^0-9]/', '', $phone);
        $length = strlen($phone);
        switch($length) {
        case 7:
            return preg_replace('/([0-9]{3})([0-9]{4})/', '$1-$2', $phone);
        break;
        case 10:
        return preg_replace('/([0-9]{3})([0-9]{3})([0-9]{4})/', '($1) $2-$3', $phone);
        break;
        case 11:
        return preg_replace('/([0-9]{1})([0-9]{3})([0-9]{3})([0-9]{4})/', '$1($2) $3-$4', $phone);
        break;
        default:
            return $phone;
        break;
        }
    }
}