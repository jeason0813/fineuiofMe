<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="FineUI.Examples.form.fileupload" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .result img
        {
            border: 1px solid #CCCCCC;
            max-width: 550px;
            padding: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="表单" Width="350px" ShowHeader="True">
        <Items>
            <x:TextBox runat="server" Label="用户名" ID="tbxUseraName" Required="true" ShowRedStar="true">
            </x:TextBox>
            <x:FileUpload runat="server" ID="filePhoto" EmptyText="请选择一张照片" Label="个人头像" Required="true"
                ShowRedStar="true">
            </x:FileUpload>
            <x:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" ValidateForms="SimpleForm1"
                Text="提交">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <x:Label ID="labResult" CssClass="result" EncodeText="false" runat="server">
    </x:Label>
    </form>
</body>
</html>
