<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toolbar_iframe.aspx.cs"
    Inherits="FineUI.Examples.toolbar.toolbar_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel runat="server" ID="Panel1" Title="面板" Width="600px" Height="450px" EnableIFrame="true"
        IFrameName="main" IFrameUrl="#">
        <Toolbars>
            <x:Toolbar runat="server" Position="Top">
                <Items>
                    <x:Button runat="server" ID="Button1" Text="打开页面一" EnablePostBack="false"
                        OnClientClick="window.open('../basic/hello.aspx', 'main');">
                    </x:Button>
                    <x:Button runat="server" ID="Button2" Text="打开页面二" EnablePostBack="false"
                        OnClientClick="window.open('../basic/hello_aspnet.aspx', 'main');">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Panel>
    </form>
</body>
</html>
