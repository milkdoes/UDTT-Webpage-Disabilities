<!DOCTYPE html>
<html>
<head>
   <title>Regulaciones</title>
</head>
<body>

   <?php require 'header.html'; ?>
   <p>
   En caso del entendimiento no total sobre las regulaciones de esta zona,
   se proveen debajo para un mejor entendimiento y la aseguranza de que se
   conlleve a una estadia mas pacifica, ambos con el personal (si hay) y
   con otras personas actualmente y futuras en la estadia.
   </p>

<?php
	$servername = "";
	$username = "";
	$password = "";
	$dbname = "";

			$conn = mysql_connect($servername, $username, $password, $dbname);
			mysql_select_db("UDTT");

			if(!$conn)
			{
				?><script>alert("connection failure");</script> <?php
			}
			else
			{
				$sql = "SELECT * FROM Regulacion";
				$result = mysql_query($sql);
				while ($row = mysql_fetch_assoc($result)) 
				{	
					?>
					<form>
						<!--<input type="text" name="ID_Regulacion" value="<?php echo htmlspecialchars($row["ID_Regulacion"]) ?>" readonly>-->
						<input type="text" name="Titulo" value="<?php echo htmlspecialchars($row["Titulo"], ENT_SUBSTITUTE) ?>" readonly><br>
						<textarea rows="5" cols="60" name="Descripcion" readonly><?php echo htmlspecialchars($row["Descripcion"], ENT_SUBSTITUTE) ?></textarea><br>
						Aplica para personas con problemas de:<br>
						Vision:
						<input type="radio" name="Vision" <?php
						if (ord($row["Vision"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>

						Movimiento: 
						<input type="radio" name="Movimiento" <?php
						if (ord($row["Movimiento"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>

						Pensamiento: 
						<input type="radio" name="Pensamiento" <?php
						if (ord($row["Pensamiento"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>

						Memoria: 
						<input type="radio" name="Memoria" <?php
						if (ord($row["Memoria"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>

						Aprendimiento: 
						<input type="radio" name="Aprendimiento" <?php
						if (ord($row["Aprendimiento"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>

						Comunicacion: 
						<input type="radio" name="Comunicacion" <?php
						if (ord($row["Comunicacion"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>

						Audicion:
						<input type="radio" name="Audicion" <?php
						if (ord($row["Audicion"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>

						Salud Mental: 
						<input type="radio" name="Salud_Mental" <?php
						if (ord($row["Salud_Mental"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>

						Relaciones Sociales: 
						<input type="radio" name="Relaciones_Sociales" <?php
						if (ord($row["Relaciones_Sociales"]) == "1") {
							echo "Checked";
						}
						 ?> readonly> <br>
					</form>
					<hr>
					<?php
				}
			}
			mysql_close($conn);
		?>


   <?php include 'footer.html'; ?>

</body>
</html>
