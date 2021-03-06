﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editor.aspx.cs" Inherits="EmailTemplateEditor.Editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Template Builder </title>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="ckeditor/ckeditor.js"></script>
    <style>
        .list-group {
            padding-left: 0;
            margin-bottom: 20px;
        }

        .list-group-item {
            position: relative;
            display: block;
            padding: 10px 15px;
            margin-bottom: -1px;
            background-color: #fff;
            border: 1px solid #ddd;
        }

     
        .form-control {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }

        .form-inline {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: horizontal;
            -webkit-box-direction: normal;
            -ms-flex-flow: row wrap;
            flex-flow: row wrap;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .btn-success {
            color: #fff;
            background-color: #5cb85c;
            border-color: #4cae4c;
        }

        .btn-primary {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
        }

        .btn {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
        }

        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            z-index: 9999;
            background-color: rgba(0,0,0,0.85);
            opacity: 0.5;
        }

        .popup {
            position: absolute;
            z-index: 99999;
            margin-left: 50% !importamt;
            top: 10vh;
            width: 500px;
            margin-left: 70vh;
            left: 0;
        }


            .popup header {
                padding: 2px 19px 3px;
                background-color: #f6f6f8;
                color: #222;
                text-transform: uppercase;
            }

                .popup header .popupTitle {
                    font-size: 18px;
                    color: #222;
                }

            .popup .popupInner {
                padding: 30px 20px 50px;
                height: 400px;
                position: relative;
                overflow-y: auto;
                background-color: #fff;
            }

        .closeBtn {
            float: right;
            margin-top: 18px;
            cursor: pointer;
        }
        .cke_panel_list{margin:0;padding:0;list-style-type:none;white-space:nowrap}

    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <textarea name="editor1" id="editor1" rows="20" cols="80">
                <div dir="ltr" style="font-size:12pt;color:#000000;background-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">

<div style="color: rgb(33, 33, 33);">
<div>
<div class="WordSection1">
<p class="MsoNormal">&nbsp;</p>
<div align="center">
<table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0" width="650" style="width:487.5pt; background:white; border-collapse:collapse">
<tbody>
<tr>
<td style="padding:7.5pt 0in 7.5pt 0in">
<p class="MsoNormal" align="right" style="text-align:right; line-height:13.5pt"><span style="font-size:9.0pt; font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:#666666"><a href="https://infstaging.isky.com/qa/Survey/Welcome?data=3f06709b-1c4a-4b14-979f-ec56fec9fd02&amp;RatingResponse=0"><span style="color:#666666">English</span></a>
 | <a href="https://infstaging.isky.com/qa/Survey/Welcome?data=4f4ed1d0-006c-4c75-9e19-916e4c12c97f&amp;RatingResponse=0">
<span style="color:#666666">Spanish</span></a> </span></p>
</td>
</tr>
<tr style="border-spacing:0">
<td style="padding:0in 0in 0in 0in; border-spacing:0">
<p class="MsoNormal"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:black"><img border="0" id="_x0000_i1025" src="https://infstaging.isky.com/InfinitiUAT/ModelImages/invite/2017/Q50/K23.png"></span></p>
</td>
</tr>
<tr style="border-spacing:0">
<td valign="top" style="padding:0in 0in 0in 0in; border-spacing:0">
<table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%; border-collapse:collapse; border-spacing:0">
<tbody>
<tr style="border-spacing:0">
<td width="100%" valign="top" style="width:100.0%; padding:0in 22.5pt 7.5pt 22.5pt; border-spacing:0">
<p class="MsoNormal" align="center" style="text-align:center"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:black"><img border="0" id="_x0000_i1026" src="http://www.elabs6.com/content/12346940/infiniti/email-logo.jpg"></span></p>
</td>
</tr>
<tr>
<td style="padding:0in 0in 0in 0in"></td>
</tr>
<tr style="border-spacing:0">
<td width="100%" valign="top" style="width:100.0%; padding:0in 22.5pt 7.5pt 22.5pt; border-spacing:0">
<p style="margin-left:160px; margin-right:0in"><span style="font-size:10.5pt">Dear </span>[customerName1]&nbsp;[customerName2]<span style="font-size:10.5pt">,</span></p>
<p style="margin-right:0in; margin-bottom:11.25pt; margin-left:0in; line-height:13.5pt">
<span style="font-size:10.5pt; font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:black">We would like to thank you for choosing KELLY INFINITI for your recent Q50 purchase. We&#8217;re delighted to have you as our customer, and we take your INFINITI ownership experience very
 seriously.</span></p>
<p style="margin-right:0in; margin-bottom:11.25pt; margin-left:0in; line-height:13.5pt">
<span style="font-size:10.5pt; font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:black">To ensure that we are providing you with the highest level of INFINITI experience, we&#8217;d love to get your feedback on how we&#8217;re doing. The survey below won&#8217;t take long, but it will
 have a big impact on how we continue to deliver the INFINITI experience.</span></p>
<p style="margin-right:0in; margin-bottom:11.25pt; margin-left:0in; line-height:13.5pt">
<span style="font-size:10.5pt; font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:black">For your convenience, we are using a web-based survey that takes an average of just under two minutes to complete. To begin the survey, please confirm the information below regarding
 your recent purchase visit. </span></p>
<p align="center" style="margin-right:0in; margin-bottom:22.5pt; margin-left:11.25pt; text-align:center; line-height:12.0pt">
<span style="font-size:10.5pt; font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:black">I will recommend KELLY INFINITI to my friends and family.</span></p>
<table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%; border-collapse:collapse; border-spacing:0">
<tbody>
<tr>
<td style="padding:0in 0in 0in 0in">
<div align="center">
<table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0" width="80%" style="width:80.0%; border-collapse:collapse">
<tbody>
<tr>
    <td style="min-width:60px!important"></td>
<td valign="bottom" style="padding:0in 0in 7.5pt 0in">
<p class="MsoNormal"><span style="font-size:9.0pt; font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:black">Strongly Disagree</span></p>
</td>
<td style="padding:0in 0in 0in 0in">
<p class="MsoNormal" align="center" style="text-align:center"><span style="color:black"><a href="https://infstaging.isky.com/qa/Survey/Welcome?data=3f06709b-1c4a-4b14-979f-ec56fec9fd02&amp;RatingResponse=1"><span style="color:#666666; text-decoration:none"><img border="0" id="_x0000_i1027" src="http://www.elabs6.com/content/12346940/infiniti/star.jpg"></span></a></span></p>
</td>
<td style="padding:0in 0in 0in 0in">
<p class="MsoNormal" align="center" style="text-align:center"><span style="color:black"><a href="https://infstaging.isky.com/qa/Survey/Welcome?data=3f06709b-1c4a-4b14-979f-ec56fec9fd02&amp;RatingResponse=2"><span style="color:#666666; text-decoration:none"><img border="0" id="_x0000_i1028" src="http://www.elabs6.com/content/12346940/infiniti/star.jpg"></span></a></span></p>
</td>
<td style="padding:0in 0in 0in 0in">
<p class="MsoNormal" align="center" style="text-align:center"><span style="color:black"><a href="https://infstaging.isky.com/qa/Survey/Welcome?data=3f06709b-1c4a-4b14-979f-ec56fec9fd02&amp;RatingResponse=3"><span style="color:#666666; text-decoration:none"><img border="0" id="_x0000_i1029" src="http://www.elabs6.com/content/12346940/infiniti/star.jpg"></span></a></span></p>
</td>
<td style="padding:0in 0in 0in 0in">
<p class="MsoNormal" align="center" style="text-align:center"><span style="color:black"><a href="https://infstaging.isky.com/qa/Survey/Welcome?data=3f06709b-1c4a-4b14-979f-ec56fec9fd02&amp;RatingResponse=4"><span style="color:#666666; text-decoration:none"><img border="0" id="_x0000_i1030" src="http://www.elabs6.com/content/12346940/infiniti/star.jpg"></span></a></span></p>
</td>
<td style="padding:0in 0in 0in 0in">
<p class="MsoNormal" align="center" style="text-align:center"><span style="color:black"><a href="https://infstaging.isky.com/qa/Survey/Welcome?data=3f06709b-1c4a-4b14-979f-ec56fec9fd02&amp;RatingResponse=5"><span style="color:#666666; text-decoration:none"><img border="0" id="_x0000_i1031" src="http://www.elabs6.com/content/12346940/infiniti/star.jpg"></span></a></span></p>
</td>
<td valign="bottom" style="padding:0in 0in 7.5pt 7.5pt">
<p class="MsoNormal"><span style="font-size:9.0pt; font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; color:black">Strongly Agree</span></p>
</td>
</tr>
</tbody>
</table>
</div>
</td>
</tr>
</tbody>
</table>
                        <p style="margin-left:160px; margin-right:0in"><span style="font-size:10.5pt">Thanks again for choosing KELLY INFINITI! </span></p>

						<p style="margin-left:160px; margin-right:0in"><span style="font-size:10.5pt">Sincerely, </span></p>

						<p style="margin-left:160px; margin-right:0in"><span style="font-size:10.5pt"><img id="_x0000_i1032" src="http://www.elabs6.com/content/12346940/infiniti/signature.PNG" /><br />
						Randy Parker<br />
						Vice President North America<br />
						INFINITI Motors USA </span></p>
						</td>
					</tr>
					<tr>
						<td style="vertical-align:top; width:100.0%">
                        <hr />
						<p style="margin-left:80px; margin-right:0in"><span style="font-size:9.0pt">If you would like to unsubscribe from receiving future email surveys, please click <a href="http://www.elabs6.com/functions/mailing_list.html?mid=3883343&amp;submitaction=2&amp;mlid=554123&amp;activity=submit&amp;siteid=12346940&amp;email=asad.abdullah%40trgworld.com&amp;euid=3abea3072c&amp;redirection=http%3A%2F%2Fwww.elabs6.com%2Ffunctions%2Funsubscribed.html"> <span style="color:#666666">here</span></a>.<br />
						Please click <a href="http://www.elabs6.com/c.html?ufl=3&amp;rtr=on&amp;s=7cmyk,2b8en,bvkb,j9s9,dxhf,55nu,494c"> <span style="color:#666666">here</span></a> to view our privacy policy. </span></p>
						</td>
					</tr>
</tbody>
</table>
</div>
<p class="MsoNormal"><span style="color:black"><img border="0" id="_x0000_i1033" src="http://www.elabs6.com/images/mlopen_post.html?rtr=on&amp;siteid=12346940&amp;mid=3883343&amp;mlid=554123&amp;uid=3abea3072c"></span></p>
</div>
</div>
</div>
</div>
               
            </textarea>
        </div>

    </form>

    <script type="text/javascript">
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        var emailhtml = '';
        var editor = CKEDITOR.replace('editor1', {
            on: {
                'instanceReady': function (evt) { evt.editor.execCommand('maximize'); }
            }
        });

        var body = ''; //objEditor.getData();
        editor.addCommand("sendEmailCommand", {
            exec: function (edt) {
                //var objEditor = CKEDITOR.instances["editor1"];
                //var body = objEditor.getData();
                body =  editor.getData();
                openPopup();
                emailhtml = edt.getData();
                //sendEmail(edt.getData());
            }
        });

        editor.ui.addButton('Send Email', {
            label: "Send Email",
            command: 'sendEmailCommand',
            toolbar: 'insert',
            icon: 'icons/mail.png'
        });
        function openPopup() {
            var div = `
                  <div class="overlay"></div>
                   <div class="popup">
                      <header>
                         <a class="closeBtn" href="" onclick="closeDialog(event)">x</a>
                         <h3 class="popupTitle">Email List</h3>
                      </header>
                      <div class="popupInner">
                        <form>
                            <div class="form-inline">
                                <input id="emailTxt" placeholder="email address" type="text" class="form-control" style="width: 200px !important;height: 20px!important;" maxlength="100">
                                <button type="button" id="addBtn" onclick="addEmail(event)"  class ="btn btn-primary" style="margin-left:10px">Add</button>
                                <button type="button" id="saveBtn" onclick="sendEmailList(event)" class ="btn btn-success" style="margin-left:10px">Send</button>
                            </div>
                            <br>
                            <h3>Email Addresses</h3>
                            <ul class="list-group" id="statusList">
                            </ul>
                        </form>
                      <div>
                  </div>
               </div>
                `;
            var $dialog = $(div);
            $dialog.appendTo('body');
        }
        function validateEmail(email) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(String(email).toLowerCase());
        }
        function addEmail(event) {
            var email = $('#emailTxt').val();
            if (!validateEmail(email)) {
                alert('Email not valid');
                event.preventDefault();
                return false;
            }

            var li = '<li class="list-group-item"><span>' + email + ' </span><span onclick="removeEmail(this)" style="cursor:pointer;float:right;">x</span></li>'
            $('#statusList').append(li);

            event.preventDefault();
            return false;
        }
        function sendEmailList(event) {
            var length = $('ul#statusList li').length;
            if (!length) {
                alert('No email found');
                return;
            }
            var emails = [];
            $('ul#statusList li').each(function (i) {
                emails.push($(this).find('span').first().text().trim()); // This is your rel value
            });
            
            sendEmail(emails, body);
        }
        function removeEmail(elem) {
            elem.closest("li").remove();
        }
        function sendEmail(emails,body) {
            $.ajax({
                async: true,
                crossDomain: true,
                url: '/editor.aspx/SendEmail',
                type: 'POST',
                data: JSON.stringify({
                    emailSender: {
                        To: emails, Subject: 'Invition for the survey', IsHtmlBody: true, Body: body
                    }
                }),
                contentType: "application/json; charset=utf-8"
            }).done(function (data) {

                console.log(data);
            }).fail(function (data) {

                console.error(data);
            });
        }

        function closeDialog(event) {
            $('.overlay').remove();
            $('.popup').remove();
            event.preventDefault();
            return false;
        }


    </script>
</body>
</html>
