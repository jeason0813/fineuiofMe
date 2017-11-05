<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_document.aspx.cs"
    Inherits="FineUI.Examples.tree.databind.tree_document" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:Tree ID="Tree1" Width="500px" EnableArrows="false" EnableLines="false" ShowHeader="true"
            Title="树控件（绑定到 XmlDocument）" runat="server">
        </x:Tree>
        <br />
        <x:Button ID="btnClear" Text="清空树" OnClick="btnClear_Click" runat="server"></x:Button>
        <br />
        <x:Button ID="btnReBind" Text="重新绑定树" OnClick="btnReBind_Click" runat="server"></x:Button>
    </form>
</body>
</html>
