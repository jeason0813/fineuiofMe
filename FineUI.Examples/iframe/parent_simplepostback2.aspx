<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_simplepostback2.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_simplepostback2" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    页面二：parent_simplepostback2.aspx
    <br />
    <br />
    <x:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回发父页面">
    </x:Button>
    <br />
    </form>
</body>
</html>
