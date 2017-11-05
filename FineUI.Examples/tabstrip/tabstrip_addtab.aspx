<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_addtab.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_addtab" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:TabStrip ID="TabStrip1" Width="950px" Height="300px" ShowBorder="true" ActiveTabIndex="0"
        runat="server">
        <Tabs>
            <x:Tab Title="FineUI 论坛" EnableIFrame="true" IFrameUrl="http://fineui.com/bbs/">
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    <br />
    <x:Button ID="btnAddBaidu1" CssClass="inline" Text="添加标签 - Baidu1（客户端代码）"
        EnablePostBack="false" runat="server">
    </x:Button>
    <x:Button ID="btnAddCnblogs1" CssClass="inline" Text="添加标签 - Cnblogs1（客户端代码）"
        EnablePostBack="false" runat="server">
    </x:Button>
    <x:Button ID="btnRemoveBaidu1" CssClass="inline" Text="删除标签 - Baidu1（客户端代码）"
        EnablePostBack="false" runat="server">
    </x:Button>
    <x:Button ID="btnRemoveCnblogs1" CssClass="inline" Text="删除标签 - Cnblogs1（客户端代码）"
        EnablePostBack="false" runat="server">
    </x:Button>
    <br />
    <br />
    <x:Button ID="btnAddBaidu2" CssClass="inline" Text="添加标签 - Baidu2（服务端代码）"
        runat="server" OnClick="btnAddBaidu2_Click">
    </x:Button>
    <x:Button ID="btnAddCnblogs2" CssClass="inline" Text="添加标签 - Cnblogs2（服务端代码）"
        runat="server" OnClick="btnAddCnblogs2_Click">
    </x:Button>
    <x:Button ID="btnRemoveBaidu2" CssClass="inline" Text="删除标签 - Baidu2（服务端代码）"
        runat="server" OnClick="btnRemoveBaidu2_Click">
    </x:Button>
    <x:Button ID="btnRemoveCnblogs2" CssClass="inline" Text="删除标签 - Cnblogs2（服务端代码）"
        runat="server" OnClick="btnRemoveCnblogs2_Click">
    </x:Button>
    <br />
    <br />
    <br />
    <br />
    注意：这些标签都是通过JavaScript脚本添加的，因此服务端无法取得这些动态添加的标签。
    <br />
    如果不使用Ajax回发页面，则所有动态添加的标签都会消失。
    <br />
    </form>
</body>
</html>
