<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload_autopostback.aspx.cs"
    Inherits="FineUI.Examples.form.fileupload_autopostback" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .photo
        {
            height: 150px;
            line-height: 150px;
            text-align: right;
        }
        .photo img
        {
            width: 200px;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="表单" Width="350px" ShowHeader="True">
        <Items>
            <x:Image ID="imgPhoto" CssClass="photo" ImageUrl="~/images/blank.png" runat="server">
            </x:Image>
            <x:FileUpload runat="server" ID="filePhoto" ShowRedStar="false" LabelSeparator=""
                ButtonText="上传个人头像" ButtonOnly="true" Required="false" ShowLabel="true" Label="&nbsp;"
                AutoPostBack="true" OnFileSelected="filePhoto_FileSelected">
            </x:FileUpload>
            <x:TextBox runat="server" Label="用户名" ID="tbxUserName" Required="true" ShowRedStar="true">
            </x:TextBox>
            <x:TextBox runat="server" Label="邮箱" ID="tbxEmail" Required="true" RegexPattern="EMAIL"
                ShowRedStar="true">
            </x:TextBox>
            <x:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" ValidateForms="SimpleForm1"
                Text="提交表单">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <x:Label ID="labResult" CssClass="result" EncodeText="false" runat="server">
    </x:Label>
    </form>
</body>
</html>
