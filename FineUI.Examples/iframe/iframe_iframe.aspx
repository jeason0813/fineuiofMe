<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <br />
    <x:Button ID="Button1" EnablePostBack="false" Text="在本页面弹出窗体" runat="server">
    </x:Button>
    <x:Window ID="Window1" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Height="450px" Width="750px" Title="窗体一">
    </x:Window>
    <br />
    <br />
    <x:Button ID="Button2" EnablePostBack="false" Text="在父页面弹出窗体" runat="server">
    </x:Button>
    <x:Window ID="Window2" Popup="false" EnableIFrame="true" IFrameUrl="#" EnableMaximize="true"
        EnableResize="true" Target="Parent" runat="server" Height="450px" Width="750px"
        Title="窗体二">
    </x:Window>
    <br />
    <x:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </x:Label>
    <br />
    </form>
</body>
</html>
