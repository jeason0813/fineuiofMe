<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.button_iframe" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="Button1" runat="server" EnablePostBack="false" Text="在本页面弹出IFrame窗体">
    </x:Button>
    <br />
    <br />
    <x:Button ID="Button2" runat="server" EnablePostBack="false" Text="在父页面弹出IFrame窗体">
    </x:Button>
    <br />
    <br />
    <x:Label ID="labResult" CssStyle="font-weight:bold;color:red;" runat="server">
    </x:Label>
    <br />
    <x:Window ID="Window1" IconUrl="~/images/16/10.png" runat="server" Popup="false"
        WindowPosition="Center" IsModal="true" Title="Popup Window 1" EnableMaximize="true"
        EnableResize="true" Target="Self" EnableIFrame="true" IFrameUrl="about:blank"
        Height="500px" Width="650px" OnClose="Window1_Close">
    </x:Window>
    <x:Window ID="Window2" IconUrl="~/images/16/11.png" runat="server" Popup="false"
        IsModal="true" Target="Parent" EnableMaximize="true" EnableResize="true" OnClose="Window2_Close"
        Title="Popup Window 2" EnableConfirmOnClose="true" CloseAction="HidePostBack"
        EnableIFrame="true" IFrameUrl="about:blank" Height="500px" Width="650px">
    </x:Window>
    </form>
    <script type="text/javascript">
        function onReady() {
            var window1 = X('<%= Window1.ClientID %>');
            window1.getTool("close").dom.qtip = "这个关闭按钮提示是通过JavaScript设置的！";
        }
    </script>
</body>
</html>
