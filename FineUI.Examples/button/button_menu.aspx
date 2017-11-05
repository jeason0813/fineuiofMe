<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_menu.aspx.cs" Inherits="FineUI.Examples.button.button_menu" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="btnMenu" Text="中国科学技术大学" EnablePostBack="false" runat="server">
        <Menu runat="server">
            <x:MenuHyperLink runat="server" Icon="TagGreen" Target="_blank" NavigateUrl="http://scms.ustc.edu.cn/"
                Text="化学与材料科学学院">
            </x:MenuHyperLink>
            <x:MenuHyperLink runat="server" Icon="TagBlue" Target="_blank" NavigateUrl="http://business.ustc.edu.cn/zh_CN/"
                Text="管理学院">
                <Menu runat="server">
                    <x:MenuHyperLink runat="server" Icon="TagPink" Target="_blank" NavigateUrl="http://is.ustc.edu.cn/"
                        Text="工商管理系">
                    </x:MenuHyperLink>
                    <x:MenuHyperLink runat="server" Icon="TagPurple" Target="_blank" NavigateUrl="http://stat.ustc.edu.cn/"
                        Text="统计与金融系">
                    </x:MenuHyperLink>
                </Menu>
            </x:MenuHyperLink>
        </Menu>
    </x:Button>
    <br />
    <br />
    <x:Button ID="Button1" Text="中国科学技术大学（动态创建下拉菜单）" EnablePostBack="false" runat="server">
    </x:Button>
    <br />
    <br />
    </form>
</body>
</html>
