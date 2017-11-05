<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window_toolbar.aspx.cs"
    Inherits="FineUI.Examples.window.window_toolbar" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Window ID="Window2" Width="500px" Height="300px" Icon="TagBlue" Title="窗体" Hidden="false"
        EnableCollapse="true" runat="server" EnableResize="true" EnableBackgroundColor="true"
        Plain="false" IsModal="false">
        <Items>
            <x:Label runat="server" Text="这是窗体的内容" ID="labWindowContent">
            </x:Label>
        </Items>
        <Toolbars>
            <x:Toolbar ID="Toolbar3" Position="Top" runat="server">
                <Items>
                    <x:ToolbarText Text="工具条文本一" ID="ToolbarText3" runat="server">
                    </x:ToolbarText>
                    <x:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                    </x:ToolbarSeparator>
                    <x:ToolbarText Text="工具条文本二" ID="ToolbarText4" runat="server">
                    </x:ToolbarText>
                </Items>
            </x:Toolbar>
            <x:Toolbar runat="server" Position="Footer">
                <Items>
                    <x:Button ID="btnChangeContent" runat="server" OnClick="btnChangeContent_Click" Text="改变窗体内容">
                    </x:Button>
                    <x:Button ID="btnClose" runat="server" OnClick="btnClose_Click" Text="关闭窗体">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Window>
    </form>
</body>
</html>
