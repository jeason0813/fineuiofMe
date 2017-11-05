<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timepicker.aspx.cs" Inherits="FineUI.Examples.form.timepicker" %>

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
            <x:DatePicker runat="server" Required="true" EnableEdit="false" Label="日期" EmptyText="请选择日期"
                ID="DatePicker1" ShowRedStar="True">
            </x:DatePicker>
            <x:TimePicker ID="TimePicker1" ShowRedStar="True" EnableEdit="false" Label="时间" Increment="30"
                Required="true" EmptyText="请选择时间" runat="server">
            </x:TimePicker>
            <x:Button ID="btnSubmit" runat="server" ValidateForms="SimpleForm1" Text="提交表单" OnClick="btnSubmit_Click">
            </x:Button>
            <x:Label ID="labResult" ShowLabel="false" runat="server">
            </x:Label>
        </Items>
    </x:SimpleForm>
    <br />
    <br />
    注：本示例通过EnableEdit属性控制日期和时间选择器不可编辑。
    </form>
</body>
</html>
