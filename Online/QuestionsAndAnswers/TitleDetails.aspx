<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TitleDetails.aspx.cs" Inherits="Online.QuestionsAndAnswers.TitleDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="/resources/layui/css/layui.css" />

    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 737px;
        }
        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 20px; background-color: #F2F2F2;">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md9">
                    <div class="layui-card">



                        <%--<div style="padding: 20px 0px 10px 30px; border-bottom: 1px solid #f6f6f6;">
                            <span class="layui-breadcrumb">
                                <a href="/index/index_right.aspx">主页</a>
                                <a href="AllQuestions.aspx">全部话题</a>
                                <a><cite>话题详情</cite></a>
                            </span>
                        </div>--%>

                         <div class="layui-col-md9">
                    <div class="layui-card">
                     <a name="oranges"></a>
                        <div class="layui-card-body">

                            <div style="padding: 20px 0px 10px 30px; border-bottom: 1px solid #f6f6f6;">
                            <span class="layui-breadcrumb" lay-separator=">">
                                <a href="/index/index_right.aspx">主页</a>
                                <a href="AllQuestions.aspx">全部话题</a>
                                <a><cite>话题详情</cite></a>
                            </span>
                        </div>
                            <div style="height:10px"></div>

                            <div style="padding: 40px 0px 30px 40px; background:#dddddd; height: 100%">
                                <asp:Label ID="TITLE" runat="server" Text="1" Font-Bold="True" Font-Size="Large"></asp:Label>
                            </div>
                            <div style="background:#dddddd;padding-left:80px" >
                                <asp:Label ID="CONTENT" runat="server" Text="1" Width="600px" Font-Size="Medium" CssClass="auto-style1"></asp:Label>
                            </div>
                            <div style="height: 100%;background:#dddddd;padding-top:50px">
                                  <div style="text-align:center"><asp:TextBox ID="reply" runat="server" Height="170px" TextMode="MultiLine" Width="80%" Visible="False"></asp:TextBox></div>
                                <div style="padding:20px 0 40px 0;text-align:center">
                                  
                                    <asp:Button ID="Button1" class="layui-btn layui-btn-radius" runat="server" Text="回复" Width="120px" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                        <div class="layui-col-md9">
                        <div class="layui-card">

                            <asp:Panel ID="Q_null" runat="server" Visible="False">
                             <div style="padding:10px 0 10px 0;height:100%; border-bottom: 1px solid #f6f6f6;text-align:center">
                                 <i class="layui-icon layui-icon-face-smile" style="font-size: 30px; color: #1E9FFF;"></i>  
                                 <asp:Label ID="Label1" runat="server" Text="还没有人解答哦，快去留下你精彩的解答吧！" Font-Size="Medium"></asp:Label>

                             </div>
                                </asp:Panel>
                            <div style="height: 30px"></div>
                            <asp:Repeater ID="Rp_list" runat="server">
                                <ItemTemplate>
                                    <div class="layui-nav layui-bg-blue">
                                        <span>姓名:<%#Eval("US02") %></span><span style="padding-left:80px">回复时间：<%#Eval("AN03") %></span></div>
                                    <div style="height: 30px"></div>
                                    <div style="height: 10px"></div>
                                    <div style="padding-left:50px"><%#Eval("AN02") %></div>
                                    <div style="height: 40px"></div>
                                    <div style="height: 10px"></div>

                                </ItemTemplate>
                            </asp:Repeater>
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
