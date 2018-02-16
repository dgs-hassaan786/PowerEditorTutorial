<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmailTemplateEditor.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Login</title>
    <link href="Content/Styles/login.css" rel="stylesheet" />
</head>
<body>
    <!--[if lt IE 7]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <section id="loginForm" class="uicLoginWrapper" style="height:305px!important;">
        <header>
           <img class="sbLogo" src="Content/img/sbLogo.png" alt="Survey Designer"/>
        </header>
        <main>
<form  class="formBlock" method="post" role="form">
    <input name="__RequestVerificationToken" type="hidden" value="VpRvVFaXWLYMpgQpVAcG-sjGxcPSLALsT5FQcADJT_TG-EDSj0eeyXYnYDsgzXBNZibCxDpWUe8LoADOsVjBLpIkIe4BK5JwVmOIAThnNmw1">               
    <input type="hidden" id="UserId" name="UserId" value="fe3681c0-2012-4b6a-9e89-754520adfbe5">
                <div class="fieldBlock">
                    
                    <input class="medium" id="Username" name="Username" placeholder="User Name" type="text" value="">
                    <p class="medium" style="margin-top:10px"><span class="field-validation-valid" data-valmsg-for="Username" data-valmsg-replace="true"></span></p>
                </div>
           
                <div class="fieldBlock">
                    <input type="password" name="Password" id="Password" placeholder="Password" class="medium">

                </div>
                
                <div class="fieldBlock">
                    
                </div>
                <div class="controlBtns">
                    
                    <input type="submit" value="Log in" class="btn">
                </div>
</form>        </main>
        <div class="copyrights" style="float:right; position:relative; top:-5px; font-size:13px;">
            <div class="cprights">
                <p>Powered by: <img src="Content/img/copyright.png" alt="2018 Powered by iSky."/></p>
            </div>
        </div>
    </section>
    <!-- Scripts Declaration will go in the bottom. -->
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery.unobtrusive-ajax.js"></script>
    <script src="Scripts/jquery.scrollTo.min.js"></script>
    <script src="Scripts/jquery.placeholder.min.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="Scripts/jquery.validate.unobtrusive.js"></script>
    <script src="Scripts/notify.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            $('input, textarea').placeholder();
        });
        $('.formBlock').submit(function (e) {
            e.preventDefault();
            $.getJSON("JSON/user.json", function (data) {
                var items = [];
                console.log(data);
                $.each(data, function (key, val) {
                    if (key == $('#Username').val() && val == $('#Password').val()) {
                        location.href = $(this).attr('editor.aspx');
                    }
                });
                console.log('error');
                $.notify("Incorrect username or password!", "error");
            });
        });

    </script>










</body>

</html>
