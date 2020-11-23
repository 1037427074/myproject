<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideoMaterial.aspx.cs" Inherits="Online.LearningDocuments.VideoMaterial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="/resources/layui/css/layui.css" />
    <style>
        .lie {
            position: relative;
            height: 42px;
            line-height: 42px;
            padding: 0 15px 0 35px;
            color: #333;
            background-color: #f2f2f2;
            cursor: pointer;
            font-size: 14px;
            overflow: hidden
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 20px; background-color: #F2F2F2;">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">




                        <div class="layui-col-md12">
                            <div class="layui-card">
                                <a name="oranges"></a>
                                <div class="layui-card-body">

                                    <div style="padding: 20px 0px 10px 30px; border-bottom: 1px solid #f6f6f6;">
                                        <span class="layui-breadcrumb" lay-separator=">">
                                            <a href="/index/index_right.aspx">主页</a>
                                            <a href="AllQuestions.aspx">全部话题</a>
                                            <a><cite>全部视频</cite></a>
                                        </span>
                                    </div>
                                    <div style="height: 10px"></div>




                                  
                                            <div class="layui-collapse" lay-accordion="">
                                                <div id="ul" class="layui-colla-item" runat="server">


                                                    <a href="VideoMaterial.aspx"></a>

                                                </div>




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
