<?php   
// Code này được tải từ : www.sharecode.org 
$host="mysql.hostinger.vn";
$user="u555876915_huy";
$pass="123456";
$db="u555876915_huy";
$connection=mysql_connect($host,$user,$pass) or die("Lỗi kết nối CSDl");
mysql_select_db($db)or die("Kết nối database không thành công");
mysql_query("SET NAMES 'utf8'");
?>