<?php 
try{
    $bdd=new PDO('mysql:host=localhost;dbname=tourismeville','root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e){
    die('Erreur : ' . $e->getMessage());
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BOBO-DIOULASSO</title>
    <link rel="stylesheet" href="accueil.css">
</head>
<body>

<?php include 'header.php' ?>
<div class="par413"><h2>BIENVENU DANS LA VIILE DE BOBO.DECOUVREZ LES SITES TOURISTIQUES DE BOBO</h2></div>
<section class='s2'>
<?php
        $essai=$bdd->query('SELECT * FROM section where idVille=1' );
             while($donnees = $essai->fetch()){

        ?>
    <div class='s21'>
       
        <div class='im2'> <img src="images/<?php echo $donnees['image'] ?>" alt=""> </div>
        <div class='s211'>
            <h3>
                <?php echo $donnees['titre'] ?>
            </h3>
            <p><?php echo $donnees['contenu'] ?></p>
            <button class='btn1'> <?php echo $donnees['bouton'] ?> </button>
    
        </div>
  
    </div>
    <?php } ?>

</section>

<section class='s3'>
    <div class='s31'>
    <div class='im4'><img src="images/musee.jpeg" alt=""></div>
    <div class='im4'><img src="images/masquebobo1.jpeg" alt=""></div>
    <div class='im4'><img src="images/masquebobo3.jpg" alt=""></div>
    </div>

<h2>LES MASQUES DE BOBO</h2>
<p class="y"></p>
<button class='btn1'>ajouter</button>

</section>

<?php include 'footer.php' ?>
</body>
</html>