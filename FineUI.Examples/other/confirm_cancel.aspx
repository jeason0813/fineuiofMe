<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirm_cancel.aspx.cs"
    Inherits="FineUI.Examples.other.confirm_cancel" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button Text="操作一（ConfirmText）" runat="server" ID="btnOperation1" ConfirmText="确认执行操作一？"
        OnClick="btnOperation1_Click">
    </x:Button>
    <br />
    <x:Button Text="操作二（OnClientClick）" runat="server" ID="btnOperation2" EnablePostBack="false"
        OnClick="btnOperation2_Click">
    </x:Button>
    <br />
    <x:Button Text="操作三（OnClientClick，点击取消按钮也回发）" runat="server" ID="btnOperation3" EnablePostBack="false"
        OnClick="btnOperation3_Click">
    </x:Button>
    </form>
</body>
</html>
