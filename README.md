# zf-docker

This is base setup for Zend Framework 1, 2, 3 application. 
Although it can be use with any php application which 
has web directory with name "public"

Main idea is to provide simple LAMP,WAMP,XAMPP replacement for Zend Framework development


Features:

1)  HTTPS Enabled (Self signed signature)
2)  MailHog for SMTP testing for Zend/Mail or Zend_Mail
3)  PhpMyAdmin 
4)  Drop in database support . 


How to Use :

1) Copy paste all files inside this directory . So that
your project "public" directory is directly under this (zf-docker) directory .

2) Take a dump of your existing database and replace db/test.sql with your sql file

3) Update database details inside docker-compose.yml 
by updating following variables

              MYSQL_DATABASE: "test"
              MYSQL_USER: "test"
              MYSQL_PASSWORD: "test"
              

4) Run docker-compose up -d
5) You can now access your ZF application under  

https://localhost

And can access phpmyadmin at

http://localhost:8080


Advance :

1) To configure Zend Mail use following SMTP settings

      $config = ['port'=>1025,'auth'=>'login'];
      $transport = new Zend_Mail_Transport_Smtp('mailhog', $config);

And then you can access all outgoing emails at

http://localhost:8025
 