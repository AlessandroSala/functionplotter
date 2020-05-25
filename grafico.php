<!DOCTYPE html>
<html>
    <head>
        <title>FP - Grafico</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="icon" href="logo.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>
    <body>
        <div class="wrap">
        
            <ul id="nav" class="navbar">
                <li class="li_nav"><a href="index.html">Homepage</a></li>
                <li class="li_nav"><a class="active" href="grafico.html">Grafico</a></li>
                <li class="li_nav"><a href="lista_funzioni.php">Lista funzioni</a></li>
                <li class="li_nav"><a href="about.html">Informazioni</a></li>
            </ul>
            <div style="display:block; width:100%; height: 90%;">

                <div id="sidebar_id" class="sidebar">
                <?php if(!empty($_POST)){
                    $f=$_POST['funzione'];

                        echo " <input class='func_input' type='text' id='f-tbox' value ='$f' placeholder='inserire la funzione'>";
                } else {
                    echo " <input class='func_input' type='text' id='f-tbox' value ='' placeholder='inserire la funzione'>";
                }
                        ?>
                    <br>
                    <button class="draw_button" onclick="entryPoint()">Disegna</button>
                    <button class="draw_button" onclick="reset()">Pulisci</button>
                    <div style="display: none;" class="slidecontainer">
                        <input type="range" min="-100" max="100" value="0" class="slider" id="myRange">
                    </div>
                    <br>
                    <table class="color_table">
                        <tr>
                            <td>
                                <p style="font-size:15px;">scegli un colore:</p>
                            </td>
                            <td>
                                <input class="color_picker" type ="color" id="lineColor" value="#ff0000">
                            </td>
                        </tr>
                    </table>
                </div>
                
                <div id="canv_div" class="main">
                    <canvas id="canv" width="1000" height="1000" style="border: solid 1px black"></canvas>
                </div>  

            </div>
        </div>
    </body>
    <script src="app.js">
        
    </script>
</html>