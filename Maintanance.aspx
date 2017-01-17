<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Bootstrap -->
    <link type="text/css" href="css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="css/bootstrap-theme.css" rel="stylesheet">

    <!-- siimple style -->
    <link type="text/css" href="css/style.css" rel="stylesheet">


    <title>Cleveral</title>
    <meta http-equiv="Content-Language" content="it">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title><%= Request.ServerVariables("HTTP_HOST") %></title>
</head>

<body>
    <div id="wrapper" style="color: #4BA8D5;">
        <div style="margin: 10px 100px; text-align: left;">
            <img src="img/Logo.png" alt="Cleveral" height="110" width="110"><span style="color: #4BA8D5; font-size: 30px; margin-left: 10px; font-weight: bold;">Cleveral</span>
        </div>
        <p align="center">
            <b><font face="Verdana" size="5" color="#4BA8D5">info@cleveral.it</font></b>


        </p>
        <div class="container">
            <div class="row">

                <div class="col-sm-12 col-md-12 col-lg-12">

                    <h1>Under Construction</h1>
                    <h2 class="subtitle">We're working to improve our website and we'll ready to launch after</h2>



                    <form action="mailto:info@cleveral.it" class="form-inline signup" role="form" name="modulo" style="margin-top: 80px; display: none">
                        <input type="text" name="oggetto" style="display: none" value="Richiesta di notifica">
                        <div class="form-group">

                            <input type="email" class="form-control" style="min-width: 180px;" name="messaggio" placeholder="Enter your email address">
                        </div>
                        <button type="submit" class="btn btn-theme" onclick="Email()">Get notified!</button>
                    </form>

                </div>

            </div>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3">
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="script/bootstrap.min.js"></script>
    <script type="text/javascript" src="script/jquery.countdown.min.js"></script>
    <script type="text/javascript">



        function Email() {
            var email = 'info@cleveral.it';
            var oggetto = document.modulo.oggetto.value;
            var messaggio = document.modulo.messaggio.value;

            location.href = "mailto:" + email + "?Subject=" + oggetto + "&Body=" + messaggio;

        }
    </script>
</body>
</html>
