<?php 
try {
    $bdd = new PDO('mysql:host=localhost;dbname=tourismeville', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = $_POST["nom"];
    $prenom = $_POST["prenom"];
    $email = $_POST["email"];
    $message = $_POST["message"];

    
    $query = "INSERT INTO formulaire (nom, prenom, mail, message) VALUES (:nom, :prenom, :email, :message)";
    
 
    $stmt = $bdd->prepare($query);

 
    $stmt->bindParam(':nom', $nom);
    $stmt->bindParam(':prenom', $prenom);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':message', $message);

    
    if ($stmt->execute()) {
        echo "<script> window.alert('Votre message a ete envoyer avec succes'); </script>";
        include"index.php";
    } else {
        echo "Une erreur s'est produite lors de l'enregistrement des données : " . $stmt->errorInfo()[2];
    }
}
?>
