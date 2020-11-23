<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lx.aspx.cs" Inherits="Online.lx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link rel="stylesheet" href="/resources/layui/css/layui.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item"><a href="">最新活动</a></li>
                <li class="layui-nav-item "><a href="">产品</a></li>
                <li class="layui-nav-item"><a href="">大数据</a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd><a href="#">移动模块</a></dd>
                        <dd><a href="#">后台模版</a></dd>
                        <dd><a href="#">电商平台</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" style="float:right">
                    <a href="">
                        <img src="#" class="layui-nav-img">我</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">修改信息</a></dd>
                        <dd><a href="javascript:;">安全管理</a></dd>
                        <dd><a href="javascript:;">退了</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
        <div>
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">默认展开</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">选项1</a></dd>
                        <dd><a href="javascript:;">选项2</a></dd>
                        <dd><a href="">跳转</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <dd><a href="">移动模块</a></dd>
                        <dd><a href="">后台模版</a></dd>
                        <dd><a href="">电商平台</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">产品</a></li>
                <li class="layui-nav-item"><a href="">大数据</a></li>
            </ul>
        </div>
    </form>
    <script src="resources/layui/layui.js"></script>
    <script type="text/javascript">
        layui.use('element', function () {
            var element = layui.element;
        });
    </script>
</body>
</html>
