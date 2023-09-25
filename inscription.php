

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire</title>
</head>
<body>
<?php include 'header.php' ?>
<h2 style="text-decoration:underline;">BIENVENU SUR LA PAGE D'INSCRIPTION</h2>

<div class='formulaire'>
    <div class='form'>
    <form method="post" action="traitement.php">
        <label for="nom">Entrez votre nom</label><br>
        <input type="text" name='nom' id='nom' placeholder='entrez votre nom'><br>

        <label for="prenom">Entrez votre prenom</label><br>
        <input type="text" name='prenom' id='prenom' placeholder='entrez votre prenom'><br>

        <label for="email">Entrez votre adresse email </label><br>
        <input type="email" name="email" id='email' placeholder='entrez votre adresse mail'><br>

        <label for="message">Entrez le message</label><br>
        <input type="text" name="message" id='message' placeholder="Entrez un message"><br>

        <input type="submit" name='envoyer' value="M'inscrire">
    </form>
    </div>
</div>


<?php include 'footer.php' ?>

</body>
</html>


<style>
    body{
        
    }
    h2{
        font-size:40px;
        margin-top:100px;
        text-align:center;
        text-decoration:underline;
    }
    .formulaire{
        text-align:center;
        font-size:20px;
        padding:50px;
        border:5px solid black;
        width:60%;
        margin-left:200px;
        border-radius:45px;
        box-shadow: 10px 10px 30px rgba(0, 0 ,0 ,0.8);
      
    }
    input{
        font-size:20px;
        padding:10px;
        border-radius:15px;
    }
    option{
        font-size:20px;
        padding:10px;
    }
    select{
        font-size:20px;
        padding:10px;
        padding-bottom:10px
    }
    .form{
        width:100%;
    }
    input[type="submit"]{
        border-radius:15px;
    }