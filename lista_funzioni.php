<meta charset="utf-8"/>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>FP - Lista funzioni</title>
        <link rel="icon" href="logo.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8"/>
        <style>
            table, td, th, tr {
                padding: 2px;
                border: 1px solid black;
                border-collapse: collapse;
            }
            .input{
                background-color: #ffaa2a;
                border: 3px;
                color: white;
                padding: 5px 5px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 15px;
            }

            .input:hover{
                background-color: #ff7300;
                transition: all 0.4s ease 0s;
            }

            a { color:inherit; }

            a:hover{
                background-color: #ff7300;
                transition: all 0.4s ease 0s;
            }

            div.footer{
                width: 100%;
                height: 20%;
                background-color:lightgray;
                text-align: center;
                padding: 75px;
                bottom: 0;
            }

            .active {
                background-color: #ff9100;
            }
            *{
                margin:0;
                padding:0;
                -moz-box-sizing: border-box; 
                -webkit-box-sizing: border-box; 
                box-sizing: border-box; 
            }
        </style>
</head>
<body>
<div class="wrap">
            <ul id="nav" class="navbar">
                <li class="li_nav"><a  href="index.html">Homepage</a></li>
                <li class="li_nav"><a href="grafico.php">Grafico</a></li>
                <li class="li_nav"><a class="active" href="lista_funzioni.php">Lista funzioni</a></li>
                <li class="li_nav"><a href="about.html">Informazioni</a></li>
            </ul>
    <div style="padding: 50px;" align="center"> 

	<?php
 $conn = mysqli_connect("localhost", "root", "");
 mysqli_select_db($conn, "progetto");
 if (!$conn) {
     echo ("Errore durante la connessione a MySql.");
     exit();
 } else {
     
 }
 $sql ="Select * from Funzione,Tipologia where Funzione.id_t=Tipologia.id_t;";
 $result = $conn->query($sql);
 $numrows = mysqli_num_rows($result);
 if ($numrows == 0){
     echo "Nessuna funzione presente";
     echo "<br>";
   }
   else{
    echo "<table class='table3'>";
    echo "<tr>";
    echo "<th>"."Id"."</th>";
    echo "<th>"."Consegna"."</th>"; 
    echo "<th>"."Tipologia"."</th>";
    echo "<th>"."Esegui"."</th>";
    echo"</tr>";
    for ($x = 0; $x < $numrows; $x++){
     echo "<tr>";
      $resrow = mysqli_fetch_row($result);
      $Id = $resrow[0];
      $consegna = $resrow[1];
      $nome=$resrow[4];
      echo "<td>".$Id."</td>";
      echo"<td>". $consegna."</td>";      
      echo"<td>". $nome."</td>";
        echo"<td><form method='POST' name='Esegui' action='grafico.php'>"."<input class='input' name='funzione' value='".$consegna."' size='0' type='hidden'/>"."<div id='buttom'><input class='input' type='submit' value='Esegui' name='B1'/></div>";
        echo "</form>"."</td>";
        echo"</tr>";
    }
    echo "</table>";
   }

?>
</div>
            <div class="footer">
                <p>Sito realizzato dalla classe <a href="#" onclick="toggleText()"><b>5Bi 2019/2020</b></a></p>
            </div>
</div>
</body>
</html>