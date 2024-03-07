<center>
<div class="registros-container">
    <h1>Registros en la Base de Datos</h1>
    <?php
    $conexion = new mysqli("localhost", "root", "", "registro_asistencias");

    if ($conexion->connect_error) {
        die("Error en la conexión: " . $conexion->connect_error);
    }

    $consulta = "SELECT * FROM empleado";
    $resultado = $conexion->query($consulta);

    if ($resultado->num_rows > 0) {
        echo "<table border='1'>";
        echo "<tr><th>ID_empleado</th><th>Nombre</th><th>DNI</th><th>Turno</th><th>Fecha</th><th>Hora_Entrada</th><th>Hora_Salida</th><th>Horas_Trabajas</th></tr>";

        while ($fila = $resultado->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $fila['ID_empleado'] . "</td>";
            echo "<td>" . $fila['Nombre'] . "</td>";
            echo "<td>" . $fila['DNI'] . "</td>";
            echo "<td>" . $fila['Turno'] . "</td>";
            echo "<td>" . $fila['Fecha'] . "</td>";
            echo "<td>" . $fila['Hora_Entrada'] . "</td>";
            echo "<td>" . $fila['Hora_Salida'] . "</td>";
            echo "<td>" . $fila['Horas_Trabajas'] . "</td>";
            // Puedes añadir más columnas según tu estructura de base de datos
            echo "</tr>";
        }

        echo "</table>";
    } else {
        echo "No hay registros en la base de datos.";
    }

    $conexion->close();
    ?>
</div>
</center>
<?php

require_once("conexion.php");

$ruta = "Upload/";

foreach ($_FILES as $key) {
    $nombre = $key["name"];
    $ruta_temporal = $key["tmp_name"];

    $fecha = getdate();
    $nombre_v = $fecha["mday"] . "-" . $fecha["mon"] . "-" . $fecha["year"] . "-" . $fecha["hours"] . "-" . $fecha["minutes"] . "-" . $fecha["seconds"] . "-";

    $destino = $ruta . $nombre_v;
    $explo = explode(".", $nombre);

    if ($explo[1] != "csv") {
        $alert = 1;
    } else {
        if (move_uploaded_file($ruta_temporal, $destino)) {
            $alert = 2;
        }
    }
}

$x = 0;
$data = array();
$fichero = fopen($destino, "r");

while (($datos = fgetcsv($fichero, 1000, ";")) !== false) {
    $x++;

    
    $datos = array_map(function ($dato) {
        return trim($dato, '"');
    }, $datos);

    
    if (empty(array_filter($datos))) {
        continue;
    }

    $data[] = '(' . $datos[0] . ',"' . $datos[1] . '",' . $datos[2] . ',"' . $datos[3] . '","' . $datos[4] . '","' . $datos[5] . '","' . $datos[6] . '","' . $datos[7] . '")';
}


$conexion = new mysqli("localhost", "root", "", "registro_asistencias");


if ($conexion->connect_error) {
    die("Error en la conexión: " . $conexion->connect_error);
}


$inserta = "INSERT INTO empleado VALUES " . implode(",", $data);


if ($conexion->query($inserta) === TRUE) {
    echo "Datos insertados correctamente.";
} else {
    echo "Error en la inserción: " . $conexion->error;
}

$conexion->close();
fclose($fichero);
?>
