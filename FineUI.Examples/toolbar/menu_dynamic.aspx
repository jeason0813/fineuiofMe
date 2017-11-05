<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu_dynamic.aspx.cs" Inherits="FineUI.Examples.toolbar.menu_dynamic" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ShowBorder="true" BodyPadding="5px" Height="300px" Width="450px" Title="面板"
        runat="server">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" Position="Top" runat="server">
            </x:Toolbar>
        </Toolbars>
    </x:Panel>
    </form>
</body>
</html>
