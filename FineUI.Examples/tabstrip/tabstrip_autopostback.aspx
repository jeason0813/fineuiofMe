<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_autopostback.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_autopostback" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title><link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .highlight
        {
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:TabStrip ID="TabStrip1" Width="750px" Height="300px" AutoPostBack="true" OnTabIndexChanged="TabStrip1_TabIndexChanged"
        ShowBorder="true" ActiveTabIndex="1" runat="server">
        <Tabs>
            <x:Tab Title="标签一" EnableBackgroundColor="true" BodyPadding="5px"
                Layout="Fit" runat="server">
                <Items>
                    <x:SimpleForm ID="SimpleForm1" ShowBorder="false" EnableBackgroundColor="true"
                        ShowHeader="false" Title="SimpleForm1" runat="server">
                        <Items>
                            <x:Label ID="Label1" CssClass="highlight" Label="文本" Text="sanshi" runat="server" />
                            <x:NumberBox ID="NumberBox1" Label="数字输入框" Required="true" ShowRedStar="true"
                                runat="server" />
                            <x:TextBox ID="TextBox1" Label="文本框" runat="server" Required="True" ShowRedStar="true">
                            </x:TextBox>
                            <x:DatePicker ID="DatePicker1" runat="server" SelectedDate="2008-05-09" Label="日期选择器"
                                Text="2008-05-09" Required="true" ShowRedStar="true">
                            </x:DatePicker>
                            <x:TextArea ID="TextArea2" Label="多行文本框" runat="server" Required="True" ShowRedStar="true" />
                        </Items>
                    </x:SimpleForm>
                </Items>
            </x:Tab>
            <x:Tab Title="标签二" BodyPadding="5px" EnableBackgroundColor="true" runat="server">
                <Items>
                    <x:Label ID="Label2" CssClass="highlight" Text="sanshi" runat="server" />
                </Items>
            </x:Tab>
            <x:Tab Title="标签三" BodyPadding="5px" EnableBackgroundColor="true"
                runat="server">
                <Items>
                    <x:Label ID="Label3" CssClass="highlight" Text="sanshi" runat="server" />
                </Items>
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    <br />
    <x:Button ID="Button2" CssStyle="margin-right:5px;float:left;" ValidateForms="SimpleForm1"
        Text="验证第一个标签中的表单" runat="server">
    </x:Button>
    <x:Button ID="Button3" Text="选中下一个标签" OnClick="Button3_Click" runat="server">
    </x:Button>
    </form>
</body>
</html>
