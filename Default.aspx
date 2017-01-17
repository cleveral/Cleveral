<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cleveral.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cleveral | The Clever Structural Monitoring</title>

    <style type="text/css">
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
        }

        #content {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            top: 0px;
        }

            #content iframe {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }
    </style>
    <link rel="icon" type="image/png" href="img/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="content">
            <iframe frameborder="0" src="http://marcobardo.wixsite.com/cleveral" allowfullscreen="true" />
        </div>
    </form>
</body>
</html>
