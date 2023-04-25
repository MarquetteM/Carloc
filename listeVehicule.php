<!doctype html>
<?php
    require "Modele/VehiculeDb.php";
	session_start();
?>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Liste Vehicule de Location</title>
  <link rel="stylesheet" href="css/cssListe.css">
</head>
	<header>
	<div class="container">
		<img src="Img/logo_carloc.png">
        <nav>
          <ul>
            <li><a href="index.php">Déconnexion</a></li>
          </ul>
        </nav>
      </div>
</header>
<body>
    <section id="cars">
        <h1 class="section_title">NOS VEHICULES DE LOCATION</h1>
        <div class="images">
            <ul>
			<?php
				//recherche la liste des vehicules dans la base
				$classVehicules = new VehiculeDb();
				$vehicules = $classVehicules->getVehicules();
				print_r ($vehicules);
				foreach ($vehicules as $vehicule) {
					echo "<li class='car'>";
						echo "<div>";
						echo "<img src='images/".$vehicule['imageListe']."' alt=''>";
						echo "</div>";
						echo "<span>".$vehicule['marque']."</span>";
						echo "<span>".$vehicule['km']." Km</span>";
						echo "<span class='prix'>".$vehicule['prixKm']." €/Km</span>";
						if ($vehicule['disponible'] == 1) {
							echo "<span>Disponible</span>";
						} else {
							echo "<span>Non disponible</span>";
						}
						echo "<a href=detailVehicule.php?id=".$vehicule['id'].">Détails</a>";
					echo "</li>";
				}
			?>
            </ul>
        </div>
	</section>
</body>
</html>