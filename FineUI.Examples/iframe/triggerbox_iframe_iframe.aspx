<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="triggerbox_iframe_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.triggerbox_iframe_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server"></x:PageManager>
    <x:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
        BodyPadding="5px" EnableBackgroundColor="true">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="btnClose" Text="关闭" EnablePostBack="false" runat="server" Icon="SystemClose">
                    </x:Button>
                    <x:Button ID="btnClosePostBack" OnClick="btnClosePostBack_Click" runat="server"
                        Text="关闭-回发父页面" Icon="SystemSaveNew">
                    </x:Button>
                    <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </x:ToolbarSeparator>
                    <x:Button ID="btnSelect" OnClick="btnSelect_Click" runat="server" Text="选择文本输入框的值"
                        Icon="SystemSaveNew">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:SimpleForm ID="SimpleForm1" ShowBorder="true" ShowHeader="false" Title="SimpleForm"
                EnableBackgroundColor="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                <Items>
                    <x:TextBox ID="TextBox1" Label="文本输入框" runat="server" Required="True">
                    </x:TextBox>
                </Items>
            </x:SimpleForm>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
