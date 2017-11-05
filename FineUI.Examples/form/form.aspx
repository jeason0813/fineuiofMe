<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="FineUI.Examples.form.form" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .redcolor
        {
        }
    </style>
</head>
<body>
    <form id="_form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form Width="600px" BodyPadding="5px" ID="Form1" EnableBackgroundColor="true" LabelWidth="100px"
        runat="server" Title="表单 1">
        <Rows>
            <x:FormRow ColumnWidths="40% 60%">
                <Items>
                    <x:Label ID="Label1" runat="server" Label="标签" Text="标签的值">
                    </x:Label>
                    <x:CheckBox ID="CheckBox1" runat="server" Text="复选框" Label="复选框" CssClass="redcolor">
                    </x:CheckBox>
                </Items>
            </x:FormRow>
            <x:FormRow ColumnWidths="40% 60%">
                <Items>
                    <x:DropDownList ID="DropDownList1" runat="server" Label="下拉列表" Required="true" ShowRedStar="True">
                        <x:ListItem Selected="true" Text="可选项 1" Value="0"></x:ListItem>
                        <x:ListItem Text="可选项 2" Value="1"></x:ListItem>
                    </x:DropDownList>
                    <x:TextBox ID="TextBox1" ShowRedStar="true" runat="server" Label="文本框" Required="true"
                        Text="">
                    </x:TextBox>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Panel ID="Panel1" runat="server" EnableBackgroundColor="true" ShowBorder="false"
                        ShowHeader="false">
                        <Items>
                            <x:Button runat="server" Text="验证此表单并提交" CssClass="inline" ValidateForms="Form1"
                                ID="btnSubmitForm1" OnClick="btnSubmitForm1_Click">
                            </x:Button>
                        </Items>
                    </x:Panel>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <br />
    <x:Form Width="600px" LabelWidth="100px" EnableBackgroundColor="true" BodyPadding="5px"
        ID="Form2" runat="server" Title="表单 2">
        <Rows>
            <x:FormRow>
                <Items>
                    <x:Label ID="Label3" Label="电话" Text="0551-1234567" runat="server" />
                    <x:Label ID="Label16" runat="server" Label="申请人" Text="admin">
                    </x:Label>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Label ID="Label4" Label="编号" Text="200804170006" runat="server" />
                    <x:TextBox ID="TextBox2" Required="true" ShowRedStar="true" Label="电子邮箱" RegexPattern="EMAIL"
                        RegexMessage="请输入有效的邮箱地址！" runat="server">
                    </x:TextBox>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:DropDownList ID="DropDownList3" Label="审批人" Required="true" runat="server" ShowRedStar="True">
                        <x:ListItem Text="老大甲" Value="0"></x:ListItem>
                        <x:ListItem Text="老大乙" Value="1"></x:ListItem>
                        <x:ListItem Text="老大丙" Value="1"></x:ListItem>
                    </x:DropDownList>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:NumberBox ID="NumberBox1" Label="申请数量" MaxValue="1000" Required="true" runat="server"
                        ShowRedStar="True" />
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:TextArea ID="TextArea1" runat="server" Label="描述" ShowRedStar="True" Required="True">
                    </x:TextArea>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Panel ID="Panel2" runat="server" EnableBackgroundColor="true" ShowBorder="false"
                        ShowHeader="false">
                        <Items>
                            <x:Button ID="btnSubmitForm2" Text="验证此表单并提交" CssClass="inline" runat="server" OnClick="btnSubmitForm2_Click"
                                ValidateForms="Form2">
                            </x:Button>
                        </Items>
                    </x:Panel>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <br />
    <x:Button ID="btnSubmitAll" Text="验证两个表单并提交" CssClass="inline" runat="server" OnClick="btnSubmitAll_Click"
        ValidateForms="Form1,Form2">
    </x:Button>
    </form>
</body>
</html>
