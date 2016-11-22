<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LeanEx.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>LOGIN</title> <!-- Agregar aquí el título del sitio, obligatorio. -->
    <meta name="description" content=""/> <!-- Agregar aquí la descripción del sitio, obligatorio. -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="author" content="Xpectare Interactive Media" />

    <link rel="apple-touch-icon" href="apple-touch-icon.png"/>
    <link rel="shortcut icon" href="favicon.ico"/><!-- Place favicon.ico in the root directory -->
    <link href="css/bootstrap-material-design.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="css/validationEngine.jquery.css" rel="stylesheet" />
    <link href="css/iconosM.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/languages1/jquery.validationEngine-es.js"></script>
    <script src="js/jquery.validationEngine.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/material.min.js"></script>
    <style type="text/css" >
        body {
            background-color:#00bcd4 !important;

        }

        .centrarDiv
	    {
		    position: absolute;
		    top:20%;
		    left:50%;
		    width:400px;
		    margin-left:-200px;
		    height:300px;
		    margin-top:-50px;
		    padding:5px;
	    }
    </style>
</head>
<body>

    <div id="login-page" class="row  centrarDiv">
    <div class="col s12 m12 l12 z-depth-6 card-panel">
      <form class="login-form" >
        <div class="row">
          <div class="input-field col s12 center">
<%--            <img src="http://w3lessons.info/logo.png" alt="" class="responsive-img valign profile-image-login"/>
            <p class="center login-form-text">W3lessons - Material Design Login Form</p>--%>
              <img src="images/LeanexLogo.jpg" alt="" class="responsive-img valign profile-image-login"/>
            <%--<h1>Lean Ex <sup style="color: darkgray;">4.0</sup></h1>--%>
            <%--<p class="center login-form-text">Sign in</p>--%>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="material-icons prefix">account_circle</i>
            <input class="validate" id="users" type="text"/>
            <label for="email" data-error="wrong" data-success="right" class="center-align">User</label>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="material-icons prefix">https</i>
            <input class="validate" id="password" type="password"/>
            <label for="password">Password</label>
          </div>
        </div>
        <div class="row">          
          <div class="input-field col s12 m12 l12  login-text">
              <input type="checkbox" id="remember-me" />
              <label for="remember-me">Remember me</label>
          </div>
        </div>
          <div id="info"></div>       
        <div class="row">
          <div class="input-field col s12">
              <button class="btn waves-effect waves-light col s12" type="button" onclick="validar();">Login</button>
          </div>
        </div>
      </form>
    </div>
  </div>
    <script type="text/javascript">
        (function ($) {
            $(function () {
                $('.button-collapse').sideNav();
            }); // end of document ready
        })(jQuery); // end of jQuery name space

        function validar() {
            $.ajax({
                url: "index.aspx/registro",
                type: "POST",  
                contentType: "application/json; charset=utf-8", 
                dataType: "json",
                data: "{'users':'" + document.getElementById('users').value + "','password':'" + document.getElementById('password').value + "'}",
                error: function (r) {
                    console.log(r);
                    alert();
                    $('#info').html('<p>An error has occurred</p>');
                },
                success: function (data) {
                    console.log(data);
                    $('#info').html('<p>Bien!!</p>');
                }                
            });
        }


    </script>
    <script>
        (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
        function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
        e=o.createElement(i);r=o.getElementsByTagName(i)[0];
        e.src='https://www.google-analytics.com/analytics.js';
        r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
        ga('create','UA-XXXXX-X','auto');ga('send','pageview');
    </script>
</body>
</html>
