<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="FineUI.Examples.toolbar.menu" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .x-toolbar-left table
        {
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ShowBorder="true" BodyPadding="5px" Height="300px" Width="450px" Title="面板"
        runat="server">
        <Toolbars>
            <x:Toolbar runat="server">
                <Items>
                    <x:ToolbarText runat="server" Text="内联菜单">
                    </x:ToolbarText>
                    <x:ToolbarSeparator runat="server">
                    </x:ToolbarSeparator>
                    <x:Button EnablePostBack="false" Text="中国科学技术大学" runat="server">
                        <Menu runat="server">
                            <x:MenuHyperLink ID="MenuHyperLink1" runat="server" Target="_blank" NavigateUrl="http://scms.ustc.edu.cn/"
                                Text="化学与材料科学学院">
                            </x:MenuHyperLink>
                            <x:MenuHyperLink ID="MenuHyperLink2" runat="server" Target="_blank" NavigateUrl="http://business.ustc.edu.cn/zh_CN/"
                                Text="管理学院">
                                <Menu runat="server">
                                    <x:MenuHyperLink ID="MenuHyperLink3" runat="server" Target="_blank" NavigateUrl="http://is.ustc.edu.cn/"
                                        Text="工商管理系">
                                    </x:MenuHyperLink>
                                    <x:MenuHyperLink ID="MenuHyperLink4" runat="server" Target="_blank" NavigateUrl="http://stat.ustc.edu.cn/"
                                        Text="统计与金融系">
                                    </x:MenuHyperLink>
                                </Menu>
                            </x:MenuHyperLink>
                        </Menu>
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Panel>
    </form>
</body>
</html>
