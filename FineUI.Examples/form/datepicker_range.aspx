<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datepicker_range.aspx.cs"
    Inherits="FineUI.Examples.form.datepicker_range" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="简单表单" runat="server">
        <Items>
            <x:DatePicker runat="server" Required="true" Label="日期" EmptyText="限制范围的日期" ID="DatePicker1"
                ShowRedStar="True">
            </x:DatePicker>
            <x:Button ID="btnSubmit" runat="server" ValidateForms="SimpleForm1" Text="提交表单"
                OnClick="btnSubmit_Click">
            </x:Button>
            <x:Label ID="labResult" ShowLabel="false" runat="server">
            </x:Label>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
