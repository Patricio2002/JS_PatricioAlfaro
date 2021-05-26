<?php
define("DBUSER","root");
define("DBHOST","localhost");
define("PASSWORD","");
define("DB","pase");
function connectdb () {
  $con = mysqli_connect(DBHOST, DBUSER, PASSWORD, DB);
  if (!$con){
    //echo mysqli_conect_error();
    //echo mysqli_conect_errno();
    echo "No se ha podido acceder a la base. <br>";
  }
  return $con;
}
?>
