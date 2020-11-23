<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideoPlayback.aspx.cs" Inherits="Online.LearningDocuments.VideoPlayback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="/resources/layui/css/layui.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="layui-col-md9">
            <div class="layui-card">
                <a name="oranges"></a>
                <div class="layui-card-body">

                    <div style="padding: 20px 0px 10px 30px; border-bottom: 1px solid #f6f6f6;">
                        <span class="layui-breadcrumb" lay-separator=">">
                            <a href="/index/index_right.aspx">主页</a>
                            <a href="AllQuestions.aspx">全部视频</a>
                            <a><cite>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="101px"></asp:DropDownList></cite></a>
                            <a><cite>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="101px"></asp:DropDownList></cite></a>
                        </span>
                    </div>
                    <div style="height: 10px"></div>


                    <div style="height: 100%; background: #dddddd; text-align: center">
                        <div style="text-align: center">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <video width="1000" height="1000" controls="">
                                        <source src="<%#Eval("S_LUJING") %>" type="video/mp4" />
                                    </video>
                                </ItemTemplate>
                            </asp:Repeater>




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
