<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllQuestions.aspx.cs" Inherits="Online.QuestionsAndAnswers.AllQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link rel="stylesheet" href="/resources/layui/css/layui.css" />
  
    <style type="text/css">
        .auto-style1 {
            margin-left: 0;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">


        <div style="padding: 20px; background-color: #F2F2F2;">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md9">
                    <div class="layui-card">


                        <div style="width: 100%; height: 100%">
                            <%--第二行--%>
                            <div style="width: 100%; height: 100%">
                                <div style="padding: 35px;">
                                    <div style="float: left">
                                        <asp:Button ID="Button1" runat="server" Text="+  新建话题" class="layui-btn layui-btn-normal layui-btn-radius" Width="125px" OnClick="Button1_Click" PostBackUrl="#oranges" />
                                    </div>
                                    <div style="float: right">
                                        <asp:TextBox ID="likeText" class="layui-input" placeholder="搜索相关话题" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True" CssClass="auto-style1" Height="26px" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div style="padding: 20px 20px 30px 30px; border-bottom: 1px solid #f6f6f6;">
                            <div style="float:left">
                                <span class="layui-breadcrumb" lay-separator=">">
                                <a href="/index/index_right.aspx">主页</a>
                                <a href="AllQuestions.aspx">全部话题</a>
                            </span>
                                </div>
                            <div style="float:left">
                             <asp:Panel ID="myQuestion" runat="server">
                            <span class="layui-breadcrumb">
                                <a><cite></cite></a>
                                <a><cite>我发布的</cite></a>
                            </span>
                                 </asp:Panel>
                                </div>
                        </div>




                        <div class="layui-card-body">
                            <asp:Repeater ID="Rp_list" runat="server">
                                <ItemTemplate>
                                    <div class="layui-nav layui-bg-green">
                                        <span>姓名:<%#Eval("US02") %> </span><span style="padding-left:80px">发布时间：<%#Eval("QU04") %></span></div>
                                    <div><strong>标题：</strong></div>
                                    <div style="height: 10px"></div>
                                    <div><%#Eval("QU02") %></div>
                                    <div><strong>内容：</strong></div>
                                    <div style="height: 10px"></div>
                                    <div><%#Eval("QU03") %></div>
                                    <div style="height: 40px"></div>
                                    <div>
                                        <div style="text-align:center">
                                            <a href="TitleDetails.aspx?id=<%#Eval("QU01")%>">所有回复</a>
                                        </div>
                                    </div>
                                    <div style="height: 10px"></div>

                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md3">
                    <div class="layui-card">
                        <div class="layui-card-header">
                             <div class="boder">
                                <div style="padding: 0px 10px 10px 0px">
                                    <asp:Label ID="Label1" runat="server" Text="我的" Font-Bold="True" Font-Size="Large"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="layui-card-body">
                            <div style="width: 100%; height: 100%; padding-top: 10px">
                                    <asp:Button ID="Button3" runat="server" Text="我发布的" class="layui-btn" Width="100%" OnClick="Button3_Click" />
                                </div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md9">
                    <div class="layui-card">
                     <a name="oranges"></a>
                        <div class="layui-card-body">
                            <div style="padding: 40px 0px 30px 40px; height: 100%">
                                <asp:Label ID="Label2" runat="server" Text="新建话题" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                            </div>
                            <div style="height: 100%">
                                <asp:Label ID="Label3" runat="server" Text="标题：" class="layui-form-label" Font-Size="Medium"></asp:Label>
                                <div class="layui-input-block">
                                    <asp:TextBox ID="Q_title" runat="server" placeholder="请输入标题" autocomplete="off" class="layui-input" Width="365px"></asp:TextBox>
                                </div>
                            </div>
                            <div style="height: 20px"></div>
                            <div style="height: 100%">
                                <asp:Label ID="Label4" runat="server" Text="正文：" class="layui-form-label" Font-Size="Medium"></asp:Label>
                                <div class="layui-input-block">
                                    <asp:TextBox ID="Q_content" runat="server" placeholder="请输入正文" autocomplete="off" class="layui-input" Width="533px" Height="176px" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div style="height: 80px"></div>
                            <div style="height: 100px">
                                <div style="float: right; padding-right: 40px">
                                    <asp:Button ID="Button4" runat="server" Text="发布" class="layui-btn layui-btn-warm layui-btn-radius" Width="125px" OnClick="Button4_Click" />
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
        layui.use('element', function () {
            var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

            //监听导航点击
            element.on('nav(demo)', function (elem) {
                //console.log(elem)
                layer.msg(elem.text());
            });
        });
    </script>
</body>
</html>
