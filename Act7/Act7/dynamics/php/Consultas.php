<?php
  include('Config.php');
  $conexion=connectdb();
  if(isset($_POST['dato'])&&($_POST['dato']!='0')&&isset($_POST['busq'])&&($_POST['busq']!='')){
    $dato=$_POST['dato'];
    $busq=$_POST['busq'];
    $sql="SELECT * FROM pase_regla NATURAL JOIN carrera NATURAL JOIN ubicacion NATURAL JOIN modalidad WHERE id_modalidad='$dato' AND nombre LIKE '%$busq%'";
    $res= mysqli_query($conexion, $sql);
  }
  elseif(isset($_POST['dato'])&&($_POST['dato']!='0')){
    $dato=$_POST['dato'];
    $sql="SELECT * FROM pase_regla NATURAL JOIN carrera NATURAL JOIN ubicacion NATURAL JOIN modalidad WHERE id_modalidad='$dato'";
    $res= mysqli_query($conexion, $sql);
  }
  else if(isset($_POST['busq'])&&($_POST['busq']!='')){
    $dato=$_POST['busq'];
    $sql="SELECT * FROM pase_regla NATURAL JOIN carrera NATURAL JOIN ubicacion NATURAL JOIN modalidad WHERE nombre LIKE '%$dato%'";
    $res= mysqli_query($conexion, $sql);
  }
  else{
    $sql="SELECT * FROM pase_regla NATURAL JOIN carrera NATURAL JOIN ubicacion NATURAL JOIN modalidad";
    $res= mysqli_query($conexion, $sql);
  }
  echo "<table border='1'>";
  echo "<thead class='tablehead'><tr><th>Clave de Carrera</th><th>Nombre de la carrera</th><th>Ubicacion de la Carrera</th><th>Tipo de modalidad</th></tr></thead>";
  echo "<tbody>";
  while($row = mysqli_fetch_array($res)){
    echo "<tr><td>".$row["clave_carrera"]."</td><td>".$row["Nombre"]."</td><td>".$row["Ubicacion"]."</td><td>".$row["Modalidad"]."</td></tr>";
  }
  echo "</tbody>";
  echo "</table>";
?>
