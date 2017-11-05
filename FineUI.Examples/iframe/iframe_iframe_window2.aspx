<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe_window2.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe_window2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="formPanel" runat="server" />
    <x:Panel ID="formPanel" ShowBorder="false" ShowHeader="false" Layout="Fit" BodyPadding="5px"
        EnableBackgroundColor="true" runat="server">
        <Toolbars>
            <x:Toolbar>
                <Items>
                    <x:Button ID="btnConfirmFormClose" Text="保存-关闭-回发父页面" EnablePostBack="false" runat="server">
                    </x:Button>
                    <x:Button ID="btnClosePostBack" Text="关闭-回发父页面" EnablePostBack="false" runat="server">
                    </x:Button>
                    <x:Button ID="btnPostBackClosePostBack" Text="关闭-回发父页面" OnClick="btnPostBackClosePostBack_Click"
                        runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:SimpleForm ID="SimpleForm1" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                <Items>
                    <x:Label ID="Label2" Label="文本" Text="sanshi" runat="server" />
                    <x:NumberBox ID="NumberBox1" Label="数字输入框" Required="true" ShowRedStar="true" runat="server" />
                    <x:CheckBox ID="CheckBox1" runat="server" Label="复选框">
                    </x:CheckBox>
                    <x:TextBox ID="TextBox1" Label="文本输入框" runat="server" ShowRedStar="true" Required="True">
                    </x:TextBox>
                    <x:DatePicker ID="DatePicker1" runat="server" SelectedDate="2008-05-09" Label="日期选择器"
                        Text="2008-05-09">
                    </x:DatePicker>
                </Items>
            </x:SimpleForm>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
