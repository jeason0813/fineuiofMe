<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textarea_autogrow.aspx.cs"
    Inherits="FineUI.Examples.form.textarea_autogrow" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:TextArea runat="server" ID="TextArea1" EmptyText="文本框的高度会自动扩展" Height="50"
        Width="200" AutoGrowHeight="true" AutoGrowHeightMin="50" AutoGrowHeightMax="200">
    </x:TextArea>
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    </form>
</body>
</html>
