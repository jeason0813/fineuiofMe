<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_simplepostback.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_simplepostback" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    页面一：parent_simplepostback.aspx
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <br />
    <x:Panel ID="Panel1" runat="server" EnableBackgroundColor="true" ShowBorder="true"
        Width="400px" Height="250px" EnableIFrame="true" IFrameUrl="parent_simplepostback2.aspx"
        ShowHeader="true" Title="面板一">
    </x:Panel>
    </form>
</body>
</html>
