<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "hello";
$dbname = "amajon";
$connectdb = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if (!$connectdb) {
  die("The connection to the database failed - ".mysqli_connect_errno()."<br>".mysli_connect_error());
}
?>
