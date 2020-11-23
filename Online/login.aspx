<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Online.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="/resources/layui/css/layui.css" />

    <style>
        body {
            background-image: url("../resources/images/bg.jpg");
            height: 100%;
            width: 100%;
        }

        #container {
            height: 100%;
            width: 100%;
        }

        input:-webkit-autofill {
            -webkit-box-shadow: inset 0 0 0 1000px #fff;
            background-color: transparent;
        }

        .admin-login-background {
            width: 300px;
            height: 300px;
            position: absolute;
            left: 50%;
            top: 40%;
            margin-left: -150px;
            margin-top: -100px;
        }

        .admin-header {
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff;
            font-weight: bold;
            font-size: 40px
        }

        .admin-input {
            border-top-style: none;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            height: 50px;
            width: 300px;
            padding-bottom: 0px;
        }

            .admin-input::-webkit-input-placeholder {
                color: #a78369
            }

        .layui-icon-username {
            color: #a78369 !important;
        }

            .layui-icon-username:hover {
                color: #9dadce !important;
            }

        .layui-icon-password {
            color: #a78369 !important;
        }

            .layui-icon-password:hover {
                color: #9dadce !important;
            }

        .admin-input-username {
            border-top-style: solid;
            border-radius: 10px 10px 0 0;
        }

        .admin-input-verify {
            border-radius: 0 0 10px 10px;
        }

        .admin-button {
            margin-top: 20px;
            font-weight: bold;
            font-size: 18px;
            width: 300px;
            height: 50px;
            border-radius: 5px;
            background-color: #a78369;
            border: 1px solid #d8b29f
        }

        .admin-icon {
            margin-left: 260px;
            margin-top: 10px;
            font-size: 30px;
        }

        i {
            position: absolute;
        }

        .admin-captcha {
            position: absolute;
            margin-left: 205px;
            margin-top: -40px;
        }

        .select {
            width: 300px;
            height: 50px;
        }
    </style>


</head>



<body>
    <form id="form1" runat="server">
        <div>

            <div id="container">
                <div></div>
                <div class="admin-login-background">
                    <div class="admin-header">
                        <span>layuimini</span>
                    </div>
                    <div>
                        <i class="layui-icon layui-icon-username admin-icon"></i>
                        <asp:TextBox ID="L_user" runat="server" placeholder="请输入用户名" class="layui-input admin-input admin-input-username"></asp:TextBox>
                    </div>
                    <div>
                        <i class="layui-icon layui-icon-password admin-icon"></i>
                        <asp:TextBox ID="L_pwd" runat="server" placeholder="请输入密码" class="layui-input admin-input" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>

                        <asp:DropDownList ID="L_type" runat="server" CssClass="select" AutoPostBack="True"></asp:DropDownList>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="登录"  class="layui-btn admin-button" OnClick="Button1_Click"/>
                </div>
            </div>







        </div>
    </form>
    <script src="/resources/layui/layui.js"></script>
</body>
</html>
