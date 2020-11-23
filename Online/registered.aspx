<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registered.aspx.cs" Inherits="Online.registered" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="/resources/layui/css/layui.css" />
</head>
<body>
    <form id="form1" runat="server" class="layui-form layui-form-pane">

            <div style="padding: 100px 300px 100px 300px; background-color: #F2F2F2;">
                <div class="layui-row layui-col-space15">
                    <div class="layui-col-md12">
                        <div class="layui-card">
                            <div class="layui-card-header">基本信息</div>
                            <div class="layui-card-body" style="padding-left: 50px">

                                <%--表单--%>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">用户名</label>
                                    <div class="layui-input-block">
                                        <asp:TextBox ID="Z_user" runat="server" placeholder="请输入用户名" class="layui-input" AutoPostBack="True" OnTextChanged="Z_user_TextChanged"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">密码</label>
                                    <div class="layui-input-block">
                                        <asp:TextBox ID="Z_pwd" runat="server" placeholder="请输入密码" class="layui-input" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>

                                
                              


                              
                                  
                              
                                <div class="layui-form-item" pane="">
                                    <label class="layui-form-label">单选框</label>
                                    <div class="layui-input-block">
                                        
                                        <asp:RadioButton ID="Z_typeS" runat="server" GroupName="type" Checked="True"  />
                                          
                                        <asp:Label ID="Label1" runat="server" Text="学生" Font-Size="Medium" ></asp:Label>
                                          
                                        <asp:RadioButton ID="Z_typeT" runat="server" GroupName="type"  />
                                        <asp:Label ID="Label2" runat="server" Text="教师" Font-Size="Medium"></asp:Label>
                                   
                                            </div>
                                </div>

                                <div class="layui-form-item">
                                    <div style="text-align:center">
                                    <asp:Button ID="Button1" runat="server" Text="注册" class="layui-btn" OnClick="Button1_Click" />
                                        </div>
                                </div>




                            </div>
                    </div>
                </div>
            </div>






        </div>
    </form>
    <script src="/resources/layui/layui.js"></script>
    <script>
        layui.use(['layedit'], function () {



        });
    </script>
</body>
</html>
