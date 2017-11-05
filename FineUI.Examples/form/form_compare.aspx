<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_compare.aspx.cs" Inherits="FineUI.Examples.form.form_compare" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="550px" LabelWidth="180px"
        runat="server" EnableBackgroundColor="true" ShowBorder="True" ShowHeader="True"
        Title="简单表单">
        <Items>
            <x:DatePicker ID="DatePicker1" Label="开始日期" Required="true" runat="server">
            </x:DatePicker>
            <x:DatePicker ID="DatePicker2" Label="结束日期（大于开始日期）" Required="true" CompareControl="DatePicker1"
                CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期！" runat="server">
            </x:DatePicker>
            <x:Label Text="&nbsp;" runat="server">
            </x:Label>
            <x:TextBox ID="TextBox1" Required="true" Label="文本框 1" runat="server">
            </x:TextBox>
            <x:TextBox ID="TextBox2" Required="true" Label="文本框 2（等于文本框 1）" CompareControl="TextBox1"
                CompareOperator="Equal" CompareMessage="文本框 2 应该等于文本框 1！" runat="server">
            </x:TextBox>
            <x:Label Text="&nbsp;" runat="server">
            </x:Label>
            <x:NumberBox ID="NumberBox1" Required="true" Label="数字框 1" runat="server">
            </x:NumberBox>
            <x:NumberBox ID="NumberBox2" Required="true" Label="数字框 2（大于等于数字框 1）" CompareControl="NumberBox1"
                CompareOperator="GreaterThanEqual" CompareMessage="数字框 2 应该大于等于数字框 1!" runat="server">
            </x:NumberBox>
            <x:Label Text="&nbsp;" runat="server">
            </x:Label>
            <x:Label ID="Label1" runat="server" Label="标签 1" Text="88">
            </x:Label>
            <x:TextBox ID="TextBox3" Required="true" Label="文本框 3（大于等于标签 1）" CompareControl="Label1"
                CompareOperator="GreaterThanEqual" CompareType="Int" CompareMessage="文本框 3 应该大于等于标签 1！"
                runat="server">
            </x:TextBox>
            <x:Label runat="server">
            </x:Label>
            <x:Button ID="btnSubmit" ValidateForms="SimpleForm1" CssClass="inline" Text="提交表单"
                runat="server">
            </x:Button>
            <x:Button ID="btnReset" Text="重置表单" EnablePostBack="false" runat="server">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
