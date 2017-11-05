<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="FineUI.Examples.window.panel" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel1" runat="server" Title="面板" Width="500px" AutoHeight="true"
        EnableBackgroundColor="true" BodyPadding="10px" EnableCollapse="True" IconUrl="~/images/16/8.png">
        <Toolbars>
            <x:Toolbar runat="server">
                <Items>
                    <x:ToolbarText Text="工具条文本一" ID="ToolbarText1" runat="server">
                    </x:ToolbarText>
                    <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </x:ToolbarSeparator>
                    <x:ToolbarText Text="工具条文本二" ID="ToolbarText2" runat="server">
                    </x:ToolbarText>
                    <x:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                    </x:ToolbarSeparator>
                    <x:ToolbarText runat="server" Text="工具条文本三" ID="ToolbarText3">
                    </x:ToolbarText>
                    <x:ToolbarFill ID="ToolbarFill1" runat="server">
                    </x:ToolbarFill>
                    <x:ToolbarText Text="工具条文本四" ID="ToolbarText4" runat="server">
                    </x:ToolbarText>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:ContentPanel ID="ContentPanel1" Title="内容面板" ShowBorder="true" Height="200px"
                BodyPadding="10px" EnableBackgroundColor="true" EnableCollapse="true" ShowHeader="true"
                runat="server">
                可以在此放置Asp.Net控件或者<a href="http://www.w3schools.com/html/" target="_blank">HTML</a>标签。
            </x:ContentPanel>
        </Items>
    </x:Panel>
    <br />
    <x:Button ID="Button2" CssClass="inline" Text="检查面板的折叠状态" runat="server" OnClick="Button2_Click">
    </x:Button>
    <x:Button ID="Button3" CssClass="inline" Text="展开/折叠内容面板" runat="server" OnClick="Button3_Click">
    </x:Button>
    <x:Button ID="Button4" Text="更新面板的标题" runat="server" OnClick="Button4_Click">
    </x:Button>
    <br />
    <x:Button ID="Button5" CssClass="inline" Text="更新工具条文本一的值" runat="server" OnClick="Button5_Click">
    </x:Button>
    <x:Button ID="Button6" Text="显示/隐藏工具条文本一" runat="server" OnClick="Button6_Click">
    </x:Button>
    </form>
</body>
</html>
