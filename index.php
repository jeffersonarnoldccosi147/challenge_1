<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Importar Registros desde Archivo .CSV</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Baloo+Bhaina">
    <link rel="stylesheet" type="text/css" href="css/stilo.css">
</head>
<body>
    <center>
    <img src="imagenes/logo.png.png" alt="logo" height="300" width="300" >
    </center>
    <center>
    <center>
        <strong><label class="titulo">IMPORTAR REGISTROS DESDE ARCHIVO .CSV</label></strong>
    </center>
    <p></p>
    
    <form action="subir_archivo.php" method="POST" enctype="multipart/form-data">
        <center>
            <br>
            <table>
                <br>
                <tr>
                    <td class="letra" width="180">Subir Archivo CSV:</td><br>
                    <td><input type="file" name="foto" id="foto"></td>
                </tr>
                <tr>
                    
                    <td colspan="2" align="center"><input type="submit" name="enviar"  value="Enviar CSV" class="boton"></td>
                </tr>
            </table>
        </center>
    </form>
    
</body>
</html>