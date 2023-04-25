<!doctype html>
<html lang="fr">
	<head>
		<meta charset="utf-8">
		<title>Page d'Acceuil</title>
		<link rel="stylesheet" href="css/cssIndex.css">
	</head>
	<body>
		<form method="post" action="verif.php">
			<img src="Img/logo_carloc.png">
			<p>Bienvenue sur notre site de location de véhicule. <br>
			Vous y trouverez tous nos véhicules à louer.</p>
		
			<div align="center" class="inputs">
				<input type="text" name="ident" id="ident" placeholder="identifiant"/>
				<input type="password" name="password" id="password" placeholder="Mot de passe">
			</div>
        
			<div align="center">
				<button type="submit">Se connecter</button>
			</div>
		</form>
	</body>
</html>