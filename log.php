<?php



$conn = mysqli_connect("localhost","u_stabary","xfeuFUqt","db_stabary") or die("Error " . mysqli_error($conn));
  echo('<h1>connecté à la base db_stabary !</h1>');


$U = $_POST['login'];
$M = $_POST['password'];

$query = "SELECT ID FROM Etudiant where MDP='$M' and ID='$U'";



 $result = mysqli_query($conn, $query) or die("Erreur de la requete : " . mysqli_error($conn));

 while($row = mysqli_fetch_array($result)) {
    echo $row["ID"] ;
  

if ($row["ID"]==0){
	echo "erreur";}
else {
	echo "ta race";}
}







?>
