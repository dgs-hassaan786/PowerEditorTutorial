<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmailTemplateEditor.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
    <link href="Content/Styles/login.css" rel="stylesheet" />
    
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery.unobtrusive-ajax.js"></script>
    <script src="Scripts/jquery.scrollTo.min.js"></script>
    <script src="Scripts/jquery.placeholder.min.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="Scripts/jquery.validate.unobtrusive.js"></script>
    <script src="Scripts/notify.min.js"></script>
</head>
<body>
    <!--[if lt IE 7]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <section id="loginForm" class="uicLoginWrapper" style="height: 305px!important;">
        <header>
            <img class="sbLogo" src="Content/img/sbLogo.png" alt="Survey Designer" />
        </header>
        <main>
            <form runat="server" class="formBlock" method="post" role="form">
                <div class="fieldBlock">

                    <asp:TextBox runat="server" class="medium" id="Username" name="Username" placeholder="User Name" type="text" value="" />
                    <p class="medium" style="margin-top: 10px"><span class="field-validation-valid" data-valmsg-for="Username" data-valmsg-replace="true"></span></p>
                </div>

                <div class="fieldBlock">
                    <asp:TextBox runat="server" type="password" name="Password" id="Password" placeholder="Password" class="medium" />

                </div>

                <div class="fieldBlock">
                </div>
                <div class="controlBtns">
                    <asp:Button runat="server" Text="Log in" CssClass="btn" OnClick="BTNLogin_Click"  />
                    <%--<input runat="server" type="submit" value="Log in" class="btn" />--%>
                </div>
            </form>
        </main>
        <div class="copyrights" style="float: right; position: relative; top: -5px; font-size: 13px;">
            <div class="cprights">
                <p>Powered by:
                    <img src="Content/img/copyright.png" alt="2018 Powered by iSky." /></p>
            </div>
        </div>
    </section>
    <!-- Scripts Declaration will go in the bottom. -->

    <script type="text/javascript">
        $(document).ready(function () {

            //$('input, textarea').placeholder();
  
        });
       


    </script>










</body>

</html>
