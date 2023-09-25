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
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class='container'>
<?php include 'header.php' ?> 
<div class='par412'><h2>
</h2></div>   

<section class="par4">
    
    <div class="par41">
    <?php
     $essai=$bdd->query('SELECT * FROM visite' );
     while($donnees = $essai->fetch()){

?>
                <div class="par411">
                    <h2><?php echo $donnees['titre']  ?>
                    </h2>
                    <p><?php echo $donnees['texte']  ?></p>
                          <button class="btn1"><?php echo $donnees['bouton']  ?></button>
                </div>
                
                <img src="images/<?php echo $donnees['image']  ?>" alt="">  
                <?php } ?>
    </div>
    
</section>

<section class="par6">
    <h2>LE BURKINA REGORGE D'ENORMES SITES TOURISTIQUES</h2>
    <div class="par61">
        <div>
        <img class="pa1" src="images/coton.jpeg" alt="">
            <p> Lorem, ipsum dolor sit amet consectetur adipisicing 
            elit. Natus similique adipisci praesentium.
            Lorem, ipsum dolor sit amet consectetur adipisicing 
            elit. Natus similique adipisci praesentium.</p></div>

            <div>
            <img class="pa1" src="images/monument1.jpeg" alt="">
            <p> Reprehenderit optio placeat quasi excepturi architecto
                , explicabo facilis perspiciatis error maxime magnam.
                Lorem, ipsum dolor sit amet consectetur adipisicing 
            elit. Natus similique adipisci praesentium.</p></div>

                <div>
                <img class="pa1" src="images/monument2.jpeg" alt="">
                <p> Deleniti recusandae quidem nesciunt, eos dolorum iure,
                     quaerat omnis est laudantium voluptatem voluptas!
                     Lorem, ipsum dolor sit amet consectetur adipisicing 
            elit. Natus similique adipisci praesentium.</p></div>
    </div>
</section>



<section class="par5">

    <div class="par51">
    <?php
     $essai=$bdd->query('SELECT * FROM ville where idVille=1' );
     while($donnees = $essai->fetch()){

?>


        <img src="images/<?php echo $donnees['image']  ?>" alt="">
        <h3><?php echo $donnees['titre']  ?></h3>
            <p><?php echo $donnees['description']  ?>
            </p>
            <a href="bobo.php"><?php echo $donnees['bouton']  ?></a>
            <?php } ?>
        </div>
        <div class="par51">
    <?php
     $essai=$bdd->query('SELECT * FROM ville where idVille=2' );
     while($donnees = $essai->fetch()){

?>


        <img src="images/<?php echo $donnees['image']  ?>" alt="">
        <h3><?php echo $donnees['titre']  ?></h3>
            <p><?php echo $donnees['description']  ?>
            </p>
            <a href="zoo.php"><?php echo $donnees['bouton']  ?></a>
            <?php } ?>
        </div>

        <div class="par51">
    <?php
     $essai=$bdd->query('SELECT * FROM ville where idVille=3' );
     while($donnees = $essai->fetch()){

?>


        <img src="images/<?php echo $donnees['image']  ?>" alt="">
        <h3><?php echo $donnees['titre']  ?></h3>
            <p><?php echo $donnees['description']  ?>
            </p>
            <a href="banfora.php"><?php echo $donnees['bouton']  ?></a>
            <?php } ?>
        </div>
    
</section>

<?php include 'footer.php' ?>
</body>
</html>