<?php 
try{
    $bdd=new PDO('mysql:host=localhost;dbname=tourismeville','root','',array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e){
    die('erreur:' . $e->getMessage());
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banfora</title>
</head>
<body>
<?php include 'header.php' ?>
<div class="par414"><h2>Decouvrez les sites touristiques de banfora</h2></div>
    

    <section>
    
        <div class="b1">
        <?php
     $essai=$bdd->query('SELECT * FROM banfora');
     while($donnees = $essai->fetch()){

?>
            <div class="b11">
                <img src="images/<?php echo $donnees['image'] ?>" alt="">
                <h3><?php echo $donnees['titre'] ?></h3>
                <p><?php echo $donnees['contenu'] ?></p>
            </div>
            <?php } ?>
        </div>
        <div class="b1">
        <?php
     $essai=$bdd->query('SELECT * FROM banfora1');
     while($donnees = $essai->fetch()){

?>
            <div class="b11">
                <img src="images/<?php echo $donnees['image'] ?>" alt="">
                <h3><?php echo $donnees['titre'] ?></h3>
                <p><?php echo $donnees['texte'] ?></p>
            </div>
            <?php } ?>
        </div>
        
    </section>

    <?php include 'footer.php' ?>
</body>
</html>



<style>
   
    .b1{
        display:flex;
        flex-direction:row;
        justify-content:space-evenly;
        margin-bottom:70px;
    }
    .b11{
        display:flex;
        flex-direction:column;
        align-items:center;
        border-Radius:30px;
        box-shadow:5px 5px 10px;
        margin:10px;
        padding:10px;
        width:270px;
    }
    .b11>img{
        width:250px;
        height: 250px;
    }
    .par414>h2{
        font-size:30px;
        text-align:center;
    }
    .par414{
    background-image: url("images/eau.jpg");
    width: 98vw;
    height: 100vh;
    background-repeat: no-repeat;
    background-size: cover;
    object-fit: cover;
    margin-top:0;
    margin-bottom:75px;
}
.par414 h2{
    font-size:50px;
    padding-top:200px;
    color:yellow;
    width:500px;
    padding-left:400px;
}


    @media screen and (max-width:400px) {
        .b1{
            display:flex;
            flex-direction:column;
            margin-left:0;
        }
        .b11{
            margin-left:0;
        }
    }
</style>