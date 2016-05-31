<!DOCTYPE html>
<html>
<head>
   <title>Llenar observacion</title>
</head>
<body>

   <?php require 'header.html'; ?>

   <p>
   Para un mejoramiento del servicio que esta zona le puede proporcionar,
   por favor llenar una observacion para el mejoramiento de los servicios
   y/o informacion que se puede proveer para una estadia mas placentera.
   </p>

   <form action="insertar-observacion.php" method="post" autocomplete="off">
      <div style="display:table; width:85%; margin:0 auto;">
         <label style="display:table-cell; width:1%;">Titulo:&nbsp;</label>
         <input type="text" name="titulo" style="display:table-cell; width:99%;" />
      </div>
      <div style="display:table; width:84%; margin:0 auto;">
         <textarea name="descripcion" style="display:table-cell; width:100%; resize:none;" rows="10"></textarea>
      </div>
      <br />
      <div style="display:table; width:50%; margin:0 auto;">
         <label style="display:table-cell; width:1%;">Correo(opcional):&nbsp;</label>
         <input type="email" name="correo" style="display:table-cell; width:99%;" />
      </div>
      <br />
      <div style="display:table; margin:0 auto;">
         <button type="submit" value="Enviar">Enviar</button>
      </div>
   </form>

   <?php include 'footer.html'; ?>

</body>
</html>
