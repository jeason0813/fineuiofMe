<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_linkbutton.aspx.cs"
    Inherits="FineUI.Examples.button.button_linkbutton" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:LinkButton ID="LinkButton2" Text="客户端事件（服务器生成）" EnablePostBack="false" runat="server">
    </x:LinkButton>
    <br />
    <x:LinkButton ID="LinkButton3" Text="服务器端事件" OnClick="LinkButton3_Click" runat="server">
    </x:LinkButton>
    <br />
    <br />
    <x:LinkButton ID="LinkButton1" Enabled="true" Text="客户端事件（在页面中定义）" EnablePostBack="false"
        OnClientClick="clickLinkButton();" runat="server">
    </x:LinkButton>
    <br />
    <x:Button ID="btnChangeEnable" Text="启用/禁用最后一个链接按钮" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
    <script>
        function clickLinkButton() {
            top.X.alert("定义在页面中的客户端事件！");
        }
    </script>
</body>
</html>
