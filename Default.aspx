<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="frmLogin" %>

<!DOCTYPE html>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Iniciar Sesión</title>

    <link href="css/AdminLTE.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" />
    <link href="css/ionicons.min.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style>
        html, body {
            min-height: 100%;
            padding: 0;
            margin: 0;
            font-family: 'Source Sans Pro', "Helvetica Neue", Helvetica, Arial, sans-serif;
        }

        iframe {
            display: block;
            overflow: auto;
            border: 0;
            margin: 0;
            padding: 0;
            margin: 0 auto;
        }

        .frame {
            height: 49px;
            margin: 0;
            padding: 0;
            border-bottom: 1px solid #ddd;
        }

            .frame a {
                color: #666;
            }

                .frame a:hover {
                    color: #222;
                }

            .frame .buttons a {
                height: 49px;
                line-height: 49px;
                display: inline-block;
                text-align: center;
                width: 50px;
                border-left: 1px solid #ddd;
            }

            .frame .brand {
                color: #444;
                font-size: 20px;
                line-height: 49px;
                display: inline-block;
                padding-left: 10px;
            }

                .frame .brand small {
                    font-size: 14px;
                }

        a, a:hover {
            text-decoration: none;
        }

        .container-fluid {
            padding: 0;
            margin: 0;
        }

        .text-muted {
            color: #999;
        }

        .ad {
            text-align: center;
            position: fixed;
            bottom: 0;
            left: 0;
            background: #222;
            background: rgba(0,0,0,0.8);
            width: 100%;
            color: #fff;
            display: none;
        }

        #close-ad {
            float: left;
            margin-left: 10px;
            margin-top: 10px;
            cursor: pointer;
        }

        #close {
            cursor: pointer;
        }

        #no-cursor {
            cursor: none;
        }
    </style>
</head>
<body class="bg-black">
    <form id="form1" runat="server" class="col-lg-12">
        <div class="form-box" id="login-box">
            <div class="header bg-blue">Login</div>
            <div class="body bg-gray">
                <div class="form-group">
                    <asp:TextBox ID="UserName" runat="server" CssClass="form-control" placeholder="Ingrese usuario..."></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="Ingrese clave..." TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="footer">
                <a href="frmPaginaPrincipal.aspx" class="btn btn-primary btn-block">Iniciar Sesión
                </a>
                <a href="MarcarAsistencia.aspx" class="btn btn-link btn-block">
                    <i class="fa fa-clock"></i>
                    <span id="close">Ir a Marcar Asistencia</span>
                </a>
                <!--<asp:Button ID="btnIngresar" CommandName="Login" runat="server" Text="Inicar Sesión" CssClass="btn bg-primary btn-block" />-->
            </div>
        </div>
    </form>
</body>
</html>
