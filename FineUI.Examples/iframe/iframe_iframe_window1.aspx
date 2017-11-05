<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe_window1.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe_window1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager AutoSizePanelID="formPanel" ID="PageManager1" runat="server"></x:PageManager>
    <x:Panel ID="formPanel" ShowBorder="false" ShowHeader="false" EnableBackgroundColor="true"
        runat="server">
        <Toolbars>
            <x:Toolbar runat="server">
                <Items>
                    <x:Button ID="btnPostBackClose" runat="server" OnClick="btnPostBackClose_Click"
                        Text="关闭-回发父页面">
                    </x:Button>
                    <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </x:ToolbarSeparator>
                    <x:Button ID="Button1" EnablePostBack="false" Text="在本页面弹出窗体" runat="server">
                    </x:Button>
                    <x:Button ID="Button2" EnablePostBack="false" Text="在父页面弹出窗体" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Panel>
    <x:Window ID="Window1" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Height="300px" Width="450px" EnableConfirmOnClose="true"
        Title="窗体三">
    </x:Window>
    <x:Window ID="Window2" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" Height="300px" Width="450px"
        EnableConfirmOnClose="true" CloseAction="HidePostBack" Title="窗体四">
    </x:Window>
    </form>
</body>
</html>
