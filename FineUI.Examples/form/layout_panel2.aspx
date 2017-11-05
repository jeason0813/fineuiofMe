<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layout_panel2.aspx.cs"
    Inherits="FineUI.Examples.form.layout_panel2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .mright
        {
            margin-right: 5px;
        }
        .datecontainer .x-form-field-trigger-wrap
        {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" FormMessageTarget="Qtip" />
    <x:SimpleForm ID="SimpleForm1" Width="600px" BodyPadding="5px" Title="表单" runat="server">
        <Items>
            <x:Panel ID="Panel2" ShowHeader="false" CssClass="x-form-item" ShowBorder="false"
                Layout="Column" runat="server">
                <Items>
                    <x:Label ID="Label2" Width="100px" runat="server" CssClass="inline" ShowLabel="false"
                        Text="用户名：">
                    </x:Label>
                    <x:TextBox ID="TextBox2" Label="用户名" Required="true" CssClass="mright" runat="server">
                    </x:TextBox>
                    <x:Button ID="Button3" Text="按钮一" CssClass="mright" runat="server">
                    </x:Button>
                    <x:Button ID="Button4" Text="按钮二" runat="server">
                    </x:Button>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel1" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <x:Label ID="Label1" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="作息起止时间：">
                    </x:Label>
                    <x:DatePicker ID="DatePicker1" Required="true" Width="150px" runat="server">
                    </x:DatePicker>
                    <x:DatePicker ID="DatePicker2" Required="true" CompareControl="DatePicker1" CompareOperator="GreaterThan"
                        CompareMessage="结束日期应该大于开始日期！" Width="150px" runat="server">
                    </x:DatePicker>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel3" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <x:Label ID="Label3" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="上班起止时间：">
                    </x:Label>
                    <x:DatePicker ID="DatePicker3" Required="true" ColumnWidth="50%" runat="server">
                    </x:DatePicker>
                    <x:DatePicker ID="DatePicker4" Required="true" CompareControl="DatePicker3" CompareOperator="GreaterThan"
                        CompareMessage="结束日期应该大于开始日期！" ColumnWidth="50%" runat="server">
                    </x:DatePicker>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel4" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <x:Label ID="Label4" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="工作时间：">
                    </x:Label>
                    <x:TextBox Width="40px" Required="true" runat="server">
                    </x:TextBox>
                    <x:Label runat="server" Text="&nbsp;小时&nbsp;">
                    </x:Label>
                    <x:TextBox Width="40px" Required="true" ID="TextBox1" runat="server">
                    </x:TextBox>
                    <x:Label ID="Label5" runat="server" Text="&nbsp;分钟">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Button ID="Button1" Text="提交表单" ValidateForms="SimpleForm1" runat="server">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <br />
    注意：本页面中表单验证失败的错误提示类型是Qtip，而不是默认的Side。
    </form>
</body>
</html>
