<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback_top2.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_postback_top2" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    页面二：parent_postback_top2.aspx
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <br />
    <x:Window ID="Window1" runat="server" Height="350px" EnableIFrame="true" IFrameUrl="parent_postback_top3.aspx"
        IsModal="true" Popup="true" Width="500px" EnableMaximize="true" EnableResize="true"
        Target="Top" OnClose="Window1_Close" Title="页面二中的弹出对话框">
    </x:Window>
    </form>
</body>
</html>
