<html>

  <head>
    <title>Test connexion MySQL</title>
  </head>

  <body>

<?php
  # connexion a la base mysqli_connect(serveur, login, pass, base)
  #  - serveur : localhost
  #  - login : u_stabary
  #  - password : xfeuFUqt
  #  - nom de la base : db_stabary
  # pour se connecter en ligne de commande (dans un ssh sur 10.2.12.2) : mysql -u u_stabary -p db_stabary

  # connexion a la base, sinon, arret et affichage de l'erreur
  $conn = mysqli_connect("localhost","u_stabary","xfeuFUqt","db_stabary") or die("Error " . mysqli_error($conn));
  echo('<h1>connecté à la base db_stabary !</h1>');

  # definition d'une requete
  $query = "SELECT * FROM Prof";

  # execution de la requete sur la connexion et arret/affichage en cas d'erreur (fort probable étant
  # donné que la table matable n'existe pas)
  $result = mysqli_query($conn, $query) or die("Erreur de la requete : " . mysqli_error($conn));

  # parcours des resultats du SELECT
  while($row = mysqli_fetch_array($result)) {
    echo $row["monchamps"] . "<br>";
  }
?>

  </body>

</html>
