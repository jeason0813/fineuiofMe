<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="label.aspx.cs" Inherits="FineUI.Examples.form.label" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Label ID="Label1" Text="普通的 Label 标签，会自动编码字符串（比如：<strong></strong>）" runat="server">
    </x:Label>
    <br />
    <x:Label ID="Label4" EncodeText="false" Text="<a href='http://www.ustc.edu.cn/' target='_blank'>中国科学技术大学（Label 标签生成的链接）</a>"
        runat="server">
    </x:Label>
    <br />
    <x:Label ID="Label2" EncodeText="false" CssStyle="color:red;font-weight:bold;"
        Text="修改文本的样式（CssStyle）" runat="server">
    </x:Label>
    <br />
    <x:Label ID="Label3" Enabled="true" EncodeText="false" Text="<span style='color:red;font-weight:bold;'>修改文本的样式（内嵌HTML）</span>"
        runat="server">
    </x:Label>
    <br />
    <x:Button ID="btnChangeEnable" Text="启用/禁用最后一个标签" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
</body>
</html>
