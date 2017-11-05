<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hello.aspx.cs" Inherits="FineUI.Examples.basic.hello" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button Text="点击弹出对话框" runat="server" ID="btnHello" OnClick="btnHello_Click">
    </x:Button>
    <br />
    <x:Button Text="在顶层窗口弹出对话框" runat="server" ID="btnHello2" OnClick="btnHello2_Click">
    </x:Button>
    </form>
</body>
</html>
