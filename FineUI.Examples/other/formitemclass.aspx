<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formitemclass.aspx.cs"
    Inherits="FineUI.Examples.other.formitemclass" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .red
        {
            color: Red;
            font-style: italic;
        }
        .blue
        {
            color: Blue;
            font-style: italic;
        }
        .blue label.x-form-item-label
        {
            color: Blue;
            font-weight: bold;
        }
        .red label.x-form-item-label
        {
            color: Red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="简单表单" runat="server">
        <Items>
            <x:TextBox runat="server" Label="用户名" CssClass="red" FormItemClass="blue" EmptyText="输入用户名"
                ID="tbxUseraName">
            </x:TextBox>
            <x:TextBox runat="server" Label="密码" CssClass="red" FormItemClass="blue" TextMode="Password"
                ID="tbxPassword">
            </x:TextBox>
            <x:Button ID="btnSwitchClass" Text="切换样式" Type="Submit" runat="server" OnClick="btnSwitchClass_Click">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <br />
    注意：如何分别改变表单标签的样式和输入框的样式。
    </form>
</body>
</html>
