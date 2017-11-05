<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_postback" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    页面一：parent_postback.aspx
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <x:Button ID="Button1" CssClass="inline" runat="server" Text="页面一中的按钮">
    </x:Button>
    <x:Button ID="Button2" runat="server" EnablePostBack="false" Text="刷新面板一中的IFrame">
    </x:Button>
    <br />
    <x:Panel ID="Panel1" runat="server" EnableBackgroundColor="true" ShowBorder="true"
        Width="800px" Height="450px" EnableIFrame="true" IFrameUrl="parent_postback2.aspx"
        ShowHeader="true" Title="面板一">
    </x:Panel>
    </form>
</body>
</html>
