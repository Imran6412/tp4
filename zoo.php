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
    <title>zoo</title>
</head>
<body>
<?php include 'header.php' ?>
<div class="par415"><h1 style="text-align:center;text-decoration:underline;">QUELQUES ANIMAUX A VISITER</h1></div>
    
    <section class="s4">

    <?php
     $essai=$bdd->query('SELECT * FROM section where idVille=2' );
     while($donnees = $essai->fetch()){

?>




      <div class="s41">
      <div class='im5'> <img src="images/<?php echo $donnees['image'] ?>" alt="">  </div>
      <div class="s411">
        <h3> <?php echo $donnees['titre']  ?></h3>
        <p>
            <?php echo $donnees['contenu'] ?>
        </p>
      </div>
      </div>  

      
            <?php } ?>
    </section>

    <?php include 'footer.php' ?>
</body>
</html>

<style>
    .s4{
        margin-left:75px;
        margin-right:75px;
    }
    .s411{
        display:flex;
        flex-direction:column;
        align-item:center;
        margin-left:50px;
    }
    .s41{
        display:flex;
        flex-direction:row;
        justify-content:space-between;
        margin-bottom:75px;
    }
    .im5>img{
        width:500px;
        height:300px;
        box-shadow:5px 5px 20px rgb(0, 0, 0.8);
    }
    h1{
        text-decoration:underline;
        text-align:center;
    }
    h3{
        text-decoration:underline;
        text-align:center;
    }
    .par415{
    background-image: url("images/zoo.jpg");
    width: 98vw;
    height: 100vh;
    background-repeat: no-repeat;
    background-size: cover;
    object-fit: cover;
    margin-top:0;
    margin-bottom:75px;
}

@media screen and (max-width:400px) {
    .s41{
        display:flex;
        flex-direction:column;
        align-items:center;
    }
    .im5>img{
        width:300px;
    }
    p{
        width:290px;
    }
    .s411{
        margin-left:5px;
    }
    h1{
        font-size:25px;
    }
}


</style>

