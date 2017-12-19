
<?php

$con = mysql_connect('localhost', 'admin', 'admin') or die(mysqli_error($link));
if (!$con) {
   die('Impossible de se connecter : ' . mysql_error());
}
else $db = mysql_select_db("kth-ethical", $con);;


?>


