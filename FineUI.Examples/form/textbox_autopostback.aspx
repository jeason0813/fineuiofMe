<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textbox_autopostback.aspx.cs"
    Inherits="FineUI.Examples.form.textbox_autopostback" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" LabelWidth="120px"
        EnableBackgroundColor="true" ShowBorder="True" Title="简单表单" Width="350px" ShowHeader="True">
        <Items>
            <x:TextBox runat="server" ID="TextBox1" Label="自动回发的文本框" EmptyText="文本框值改变则自动回发"
                AutoPostBack="true" OnTextChanged="TextBox1_TextChanged">
            </x:TextBox>
            <x:TextBox ID="TextBox2" runat="server" Label="文本框" Text="">
            </x:TextBox>
            <x:Button runat="server" Text="提交">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    </form>
</body>
</html>
