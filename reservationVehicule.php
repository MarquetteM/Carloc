<!doctype html>
<?php
session_start();
    require "Modele/VehiculeDb.php";
    require "Modele/UtilisateurDb.php";
    //recherche l'id du véhicule
$idVehicule = $_REQUEST["id"];
$classVehicule = new VehiculeDb();
$infosVehicule = $classVehicule->getVehicule($idVehicule);
$id = $_SESSION["idUtil"];
$classUtilisateur = new UtilisateurDb();
$utilisateur = $classUtilisateur->getUtilisateurId($id);
//$date = getdate();
$dateJour = date( 'yyyy-mm-dd');
//$dateJour = $date['year']."-".$date['mon']."-".$date['mday'];
$dateJour2 = "2024-05-13";
?>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Confirmation location</title>
  <link rel="stylesheet" href="css/cssReservation.css">
</head>
<body>
        <div class="container">
            <?php 
            echo "<h1>Confirmation de location du véhicule</h1>
            <div class='details'>
                <span>Nom :</span>
                <span>".$utilisateur['nom']."</span>
            </div>
            <div class='details'>
                <span>Prénom :</span>
                <span>".$utilisateur['prenom']."</span>
            </div>
            <div class='details'>
            <span>Marque du véhicule :</span>
            <span>".$infosVehicule['marque']."</span>
            </div>
            <div class='details'>
                <span>Modèle du véhicule :</span>
                <span>".$infosVehicule['modele']."</span>
            </div>
            <div class='details'>
                <span>KmDébut :</span>
                <input type='number' step='any' id='kmDebut' name='kmDebut'>
            </div>
            <div class='details'>
            <span>Date début location :</span>
            <input type='date' value='".$dateJour."' id='dateDebut' name='dateDebut'>
            </div>
            <div class='details'>
            <span>Date fin location :</span>
            <input type='date' value='".$dateJour2."' id='dateFin' name='dateFin'>
            </div>
            <div class='details'>
                <span>Prix :</span>
                <span>".$infosVehicule['prixKm']."€/Km</span>
            </div>";

            if ($infosVehicule['disponible']==1){

            echo"<div class='confim-button'>Confirmer la réservation
            </div>";
            }
            
            ?>
            <input type="date" id="start" name="trip-start"<?php echo"
       value='".$dateJour."'
       min='2022-01-01' max='2022-02-01'>"; echo "**".$dateJour;?>
            <div class="return-button">
                <a href="listeVehicule.php"> Retour </a>
            </div>
        </div>
        </body>
        </html>