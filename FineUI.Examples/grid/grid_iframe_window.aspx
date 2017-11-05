<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="grid_iframe_window.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_iframe_window" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
    <x:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
        BodyPadding="5px" EnableBackgroundColor="true">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="btnClose" EnablePostBack="false" Text="关闭" runat="server" Icon="SystemClose">
                    </x:Button>
                    <x:Button ID="btnSaveContinue" Text="保存-关闭-回发父页面" runat="server" Icon="SystemSaveNew"
                        OnClick="btnSaveContinue_Click">
                    </x:Button>
                    <x:Button ID="btnSaveRefresh" Text="保存-关闭-刷新父页面" runat="server" Icon="SystemSaveNew"
                        OnClick="btnSaveRefresh_Click">
                    </x:Button>
                    <x:ToolbarFill ID="ToolbarFill1" runat="server">
                    </x:ToolbarFill>
                    <%--<x:Button ID="Button1" Text="弹出对话框" runat="server" OnClick="Button1_Click">
                    </x:Button>--%>
                    <x:ToolbarText ID="ToolbarText1" Text="提示一" runat="server">
                    </x:ToolbarText>
                    <x:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                    </x:ToolbarSeparator>
                    <x:ToolbarText ID="ToolbarText2" Text="提示二&nbsp;&nbsp;" runat="server">
                    </x:ToolbarText>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:Panel ID="Panel2" Layout="Fit" runat="server" ShowBorder="false" ShowHeader="false">
                <Items>
                    <x:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false" EnableBackgroundColor="true"
                        AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                        <Items>
                            <x:Label ID="Label2" Label="申请人" Text="sanshi" runat="server" />
                            <x:Label ID="Label3" Label="电话" Text="0551-1234567" runat="server" />
                            <x:NumberBox ID="NumberBox1" Label="数量" Required="true" ShowRedStar="true" runat="server" />
                            <x:CheckBox ID="CheckBox1" runat="server" Text="" Label="是否审批">
                            </x:CheckBox>
                            <x:DatePicker ID="DatePicker1" Required="True" ShowRedStar="true" runat="server"
                                SelectedDate="2008-05-09" Label="申请日期" Text="2008-05-09">
                            </x:DatePicker>
                            <x:TextArea ID="TextArea2" Label="描述" runat="server" Required="True" ShowRedStar="true" />
                            <x:HtmlEditor ID="HtmlEditor1" Label="详细描述" Height="150px" runat="server">
                            </x:HtmlEditor>
                        </Items>
                    </x:SimpleForm>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
