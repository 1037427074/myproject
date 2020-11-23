<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_top.aspx.cs" Inherits="Online.index.index_top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

     <link rel="stylesheet" href="/resources/layui/css/layui.css" />
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="layui-header header">
            
             <ul class="layui-nav" lay-filter="">
                 <li class="layui-nav-item">
                <img src="/resources/images/w1.png"  alt="layui"/>
            </li>
                <li class="layui-nav-item " style="float:right"><a href="#">我的成绩</a></li>
                <li class="layui-nav-item" style="float:right"><a href="#">我的信息</a></li>
               
               <%-- <li class="layui-nav-item" style="float:right">
                    <a href="#">
                        <img src="/resources/images/w1.png" class="layui-nav-img"/>我</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">修改信息</a></dd>
                        <dd><a href="javascript:;">安全管理</a></dd>
                        <dd><a href="javascript:;">退了</a></dd>
                    </dl>
                </li>--%>
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
