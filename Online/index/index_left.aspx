<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_left.aspx.cs" Inherits="Online.index.index_left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="/resources/layui/css/layui.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="layui-side layui-bg-black layuimini-menu-left" layuimini-tab-tag="no">

            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">网络上课</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/LearningDocuments/VideoMaterial.aspx" target="main">视频学习</a></dd>
                        <dd><a href="#">教材下载</a></dd>
                         <dd><a href="#">上传视频</a></dd>
                    </dl>
                </li>
               
                <li class="layui-nav-item"><a href="/QuestionsAndAnswers/AllQuestions.aspx" target="main">疑难解答</a></li>
                 <li class="layui-nav-item"><a href="/QuestionsAndAnswers/AllQuestions.aspx" target="main">课后作业</a></li>
                 <li class="layui-nav-item"><a href="/QuestionsAndAnswers/AllQuestions.aspx" target="main">考试</a></li>
                <li class="layui-nav-item"><a href="/QuestionsAndAnswers/AllQuestions.aspx" target="main">练习题库</a></li>
            </ul>


        </div>
    </form>
     <script src="/resources/layui/layui.js"></script>
    <script type="text/javascript">
        layui.use('element', function () {
            var element = layui.element;
        });
    </script>
</body>
</html>
