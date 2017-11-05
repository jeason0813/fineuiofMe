<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textbox.aspx.cs"
    Inherits="FineUI.Examples.form.textbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="登录表单" Width="350px" ShowHeader="True">
        <Items>
            <x:TextBox runat="server" Label="用户名" ID="tbxUseraName">
            </x:TextBox>
            <x:TextBox runat="server" ID="tbxPassword" Label="密码" TextMode="Password">
            </x:TextBox>
            <x:Button ID="btnSubmit" CssClass="inline" runat="server" OnClick="btnSubmit_Click"
                Text="登录">
            </x:Button>
            <x:Button ID="Button1" runat="server" EnablePostBack="false" Type="Reset" Text="重置">
            </x:Button>
            <x:Label ID="labResult" ShowLabel="false" runat="server">
            </x:Label>
        </Items>
    </x:SimpleForm>
    <br />
    </form>
</body>
</html>
