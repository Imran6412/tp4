<nav class="header">
            <img class="im1" src="images/voyage.jpeg" alt="">
            <ul>
                <a class="acc" href="index.php">accueil</a>
                <a href="accueil.php">service</a>
                <button id='redirection'>Inscription</button>
            </ul>
        </nav>


        <script>
            document.getElementById('redirection').addEventListener("click",function(){
                window.location.href='inscription.php';
            } );
        </script>


        <style>
            ul{

margin-top: 30px;
text-align:center;
margin-bottom:50px;
margin-top:50px;
}
.header a{
    font-size: 20px;
    color: white;
    margin-left:200px;
    text-decoration:none;
    border:2px solid  white;
    padding-left:15px;
    padding-right:15px;
    border-Radius:15px;
}
.header button{
    width: 150px;
    height: 40px;
    background: white;
    color:#087f5b;
    border-radius: 15px;
    border: 0;
    cursor: pointer;
    margin-left:200px;
}
.header button:hover{
    color:  #087f5b;
    background: white;
    cursor: pointer;
    border:2px solid  #087f5b;
}
.im1{
    margin-top:45px;
    width: 200px;
    height: 70px;
    margin-left: 40px;
    
}
.header{
    display: flex;
    flex-direction: row;
    text-align: center;
    padding: -10px;
    width: 100%;
    background: #087f5b;
    position:relative; 
    margin-top:-30px;
}





@media screen and (max-width:400px) {
    .header{
        display:flex;
        flex-direction:column;
        padding:0;
        width:100%;
    }
    .header a{
        font-size:18px;
        padding:10px;
        margin-left:30px;
    }
    .header button{
        margin-top:20px;
        margin-left:50px;
        text-align:center;
    }
}
        </style>