<!doctype html>
<?php
session_start();
    require "Modele/VehiculeDb.php";
    require "Modele/UtilisateurDb.php";
    require "Modele/LocationDb/php";
    //recherche l'id du véhicule
$idVehicule = $_REQUEST["id"];
$classVehicule = new VehiculeDb();
$infosVehicule = $classVehicule->getVehicule($idVehicule);
$id = $_SESSION["idUtil"];
$classUtilisateur = new UtilisateurDb();
$utilisateur = $classUtilisateur->getUtilisateurId($id);
$classLocation = new LocationDb();
$location = $classLocation->ajoutLocation($id);
?>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Confirmation location</title>
  <link rel="stylesheet" href="css/cssReservation.css">
</head>
<!-- <header>
	<div class="container2">
		<img src="Img/logo_carloc.png">
        <nav>
          <ul>
            <li><a href="index.php">Déconnexion</a></li>
          </ul>
        </nav>
      </div>
</header> -->
<body>
        <div class="container">
        <h1>Réservation du véhicule</h1>
            <div class="details">
                <span>Nom :</span>
                <span><?php echo $utilisateur['nom'];?></span>
            </div>
            <div class="details">
                <span>Prénom :</span>
                <span><?php echo $utilisateur['prenom'];?></span>
            </div>
            <div class="details">
            <span>Marque du véhicule :</span>
            <span><?php echo $infosVehicule['marque'];?></span>
            </div>
            <div class="details">
                <span>Modèle du véhicule :</span>
                <span><?php echo $infosVehicule['modele'];?></span>
            </div>
            <div class="details">
                <span>KmDébut :</span>
                <input type="number" step="any" id="kmDebut" name="name">
            </div>
            <div class="details">
            <span>Date début location :</span>
            <input type="date" id="dateDebut" name="name">
            </div>
            <div class="details">
            <span>Date fin location :</span>
            <input type="date" id="dateFin" name="name">
            </div>
            <div class="details">
            <span>Prix :</span>
            <span><?php echo $infosVehicule['prixKm'];?> €/Km</span>
            </div>
            <?php
            if ($infosVehicule['disponible']==1){
            echo'<button class="button"><a href="modifLocation.php?id:"'$idVehicule.'& disp:'.$dispo.'> Confirmer la réservation </a>';
            
            }
            ?>
            <button class="button"><a href=javascript:history.go(-1)>Retour</a>
        </div>
    </body>
</html>