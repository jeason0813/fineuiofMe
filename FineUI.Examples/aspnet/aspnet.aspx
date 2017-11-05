<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspnet.aspx.cs" Inherits="FineUI.Examples.aspnet.aspnet" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AjaxAspnetControls="aspBox,aspButton" runat="server" />
    <x:ContentPanel ID="ContentPanel1" runat="server" Width="500px" BodyPadding="5px"
        EnableBackgroundColor="true" ShowBorder="true" ShowHeader="true" Title="内容面板">
        <x:TextBox runat="server" Width="300px" ID="extBox">
        </x:TextBox>
        <br />
        <br />
        <asp:TextBox runat="server" Width="300px" ID="aspBox"></asp:TextBox>
        <br />
        <br />
        <x:Button ID="Button1" runat="server" CssClass="inline" Text="1. FineUI 按钮（AJAX）"
            OnClick="Button1_Click">
        </x:Button>
        <x:Button ID="Button2" runat="server" Text="2. FineUI 按钮" EnableAjax="false" OnClick="Button2_Click">
        </x:Button>
        <br />
        <asp:Button ID="Button3" Text="3. ASP.NET 按钮（AJAX）" runat="server" OnClick="Button3_Click"
            UseSubmitBehavior="false" />
        <asp:Button ID="Button4" Text="4. ASP.NET 按钮" runat="server" OnClick="Button4_Click" />
    </x:ContentPanel>
    <br />
    注意：只有设置ASP.NET按钮的属性UseSubmitBehavior=false，点击事件才是AJAX；否则点击ASP.NET按钮会导致整个页面回发。
    </form>
</body>
</html>
