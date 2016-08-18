
<?php
// Code này được tải từ : www.sharecode.org 
session_start();
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_config = "mysql.hostinger.vn";
$database_config = "u555876915_huy";
$username_config = "u555876915_huy";
$password_config = "123456";
$config = mysql_pconnect($hostname_config, $username_config, $password_config) or trigger_error(mysql_error(),E_USER_ERROR); 
ob_start();
mysql_query("set names 'utf8'");
?>