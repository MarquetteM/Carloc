<!doctype html>
<?php
session_start();
    require "Modele/VehiculeDb.php";
    require "Modele/UtilisateurDb.php";
    require "Modele/LocationDb/php";
    //recherche l'id du véhicule
$idVehicule = $_REQUEST["id"];
$disponibilite = $_REQUEST["disp"]
$dispo = $classVehicule->modifVehiculeDispo($idVehicule, $disponibilite);
header("listeVehicule.php");