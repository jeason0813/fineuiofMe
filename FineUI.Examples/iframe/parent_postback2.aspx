<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback2.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_postback2" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    页面二：parent_postback2.aspx
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <x:Button ID="Button1" runat="server" Text="页面二中的按钮">
    </x:Button>
    <br />
    <x:Window ID="Window1" runat="server" Height="350px" EnableIFrame="true" IFrameUrl="parent_postback3.aspx"
        IsModal="false" Popup="true" Width="500px" EnableMaximize="true" EnableResize="true"
        Target="Self" OnClose="Window1_Close" Title="页面二中的弹出对话框">
    </x:Window>
    </form>
</body>
</html>
