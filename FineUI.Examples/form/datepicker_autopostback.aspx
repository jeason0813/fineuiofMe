<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datepicker_autopostback.aspx.cs"
    Inherits="FineUI.Examples.form.datepicker_autopostback" %>

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
        Title="简单表单（DatePicker-AutoPostBack）" runat="server">
        <Items>
            <x:DatePicker runat="server" Required="true" AutoPostBack="true" OnTextChanged="DatePicker1_TextChanged"
                Label="开始日期" EmptyText="请选择开始日期" ID="DatePicker1" ShowRedStar="True">
            </x:DatePicker>
            <x:DatePicker ID="DatePicker2" Required="true" Readonly="false" CompareControl="DatePicker1"
                DateFormatString="yyyy-MM-dd" CompareOperator="GreaterThanEqual" CompareMessage="结束日期应该大于开始日期"
                Label="结束日期" runat="server" ShowRedStar="True">
            </x:DatePicker>
            <x:Button ID="Button1" runat="server" ValidateForms="SimpleForm1" Text="提交表单"
                OnClick="Button1_Click">
            </x:Button>
            <x:Label ID="labResult" ShowLabel="false" runat="server">
            </x:Label>
        </Items>
    </x:SimpleForm>
    <br />
    <x:SimpleForm ID="SimpleForm2" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="简单表单（DatePicker-EnableDateSelectEvent）" runat="server">
        <Items>
            <x:DatePicker runat="server" Required="true" EnableDateSelectEvent="true" OnDateSelect="DatePicker3_DateSelect"
                Label="开始日期" EmptyText="请选择开始日期" ID="DatePicker3" ShowRedStar="True">
            </x:DatePicker>
            <x:DatePicker ID="DatePicker4" Required="true" Readonly="false" CompareControl="DatePicker3"
                DateFormatString="yyyy-MM-dd" CompareOperator="GreaterThanEqual" CompareMessage="结束日期应该大于开始日期"
                Label="结束日期" runat="server" ShowRedStar="True">
            </x:DatePicker>
            <x:Button ID="Button2" runat="server" ValidateForms="SimpleForm1" Text="提交表单" OnClick="Button2_Click">
            </x:Button>
            <x:Label ID="labResult2" ShowLabel="false" runat="server">
            </x:Label>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
