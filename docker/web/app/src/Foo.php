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
        fclose($fp);
        
        return file_exists($saveTo); 
    }
}
