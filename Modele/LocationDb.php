<?php
require_once 'Modele.php';
class LocationDb extends Modele {

    public function getLocation ($id) {
		$sql = "SELECT * FROM utilisateur WHERE id = ?"; 
		
		$resultat = $this->executerRequete($sql, array($id));
		if ($resultat->rowCount() > 0) {
			return $resultat->fetchAll();
		} else {
			return 0;
		}
    }

    public function getLocationVehicClient ($idClient, $idVehicule) {
		$sql = "SELECT * FROM utilisateur WHERE idClient = ? and idVehicule = ?"; 
		
		$resultat = $this->executerRequete($sql, array($idClient, $idVehicule));
		if ($resultat->rowCount() > 0) {
			return $resultat->fetch();
		} else {
			return 0;
		}
    }

    public function ajoutLocation($dateDeb, $dateFin, $kmVehiculeDeb, $kmVehiculeFin, $idVehicule, $idClient, $prix) {
		$sql = 'INSERT INTO utilisateur(dateDeb, dateFin, kmVehiculeDeb, kmVehiculeFin, idVehicule, idClient, prix) VALUES (?, ?, ?, ?, ?, ?, ?)';
		$this->executerRequete($dateDeb, $dateFin, $kmVehiculeDeb, $kmVehiculeFin, $idVehicule, $idClient, $prix);
    }

}