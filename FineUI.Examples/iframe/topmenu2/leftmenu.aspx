<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leftmenu.aspx.cs" Inherits="FineUI.Examples.iframe.topmenu2.leftmenu" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="leftTree" runat="server"></x:PageManager>
    <x:Tree runat="server" ShowBorder="false" ShowHeader="false" EnableArrows="true"
        ID="leftTree">
    </x:Tree>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="./data/menuMail.xml">
    </asp:XmlDataSource>
    </form>
    <script>
        var leftTreeID = '<%= leftTree.ClientID %>';

        function onReady() {

            // 展开树的第一个节点，并选中第一个节点下的第一个子节点（在右侧IFrame中打开）
            var tree = X(leftTreeID);
            var treeFirstChild = tree.getRootNode().firstChild;
            // 展开第一个节点（如果想要展开全部节点，调用 tree.expandAll();）
            treeFirstChild.expand();


            // 选中第一个链接节点，并在右侧IFrame中打开此链接
            var treeFirstLink = treeFirstChild.firstChild;
            treeFirstLink.select();
            parent.window.frames['mainframe'].location.href = treeFirstLink.attributes['href'];

        }
    </script>
</body>
</html>
