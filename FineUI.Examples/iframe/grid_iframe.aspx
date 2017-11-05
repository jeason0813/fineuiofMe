<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_iframe.aspx.cs" Inherits="FineUI.Examples.iframe.grid_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel7" runat="server" />
    <x:Panel ID="Panel7" runat="server" EnableBackgroundColor="true" BodyPadding="3px"
        EnableLargeHeader="true" Title="Panel" ShowBorder="false" ShowHeader="True" Layout="VBox"
        BoxConfigAlign="Stretch">
        <Items>
            <x:Form ID="Form5" ShowBorder="False" BodyPadding="5px" EnableBackgroundColor="true"
                ShowHeader="False" runat="server">
                <Rows>
                    <x:FormRow>
                        <Items>
                            <x:TwinTriggerBox runat="server" EmptyText="输入要搜索的关键词" ShowLabel="false" ID="ttbSearch"
                                ShowTrigger1="false" OnTrigger1Click="ttbSearch_Trigger1Click" OnTrigger2Click="ttbSearch_Trigger2Click"
                                Trigger1Icon="Clear" Trigger2Icon="Search">
                            </x:TwinTriggerBox>
                            <x:DropDownList ID="DropDownList1" ShowLabel="false" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                runat="server">
                                <x:ListItem Text="过滤条件一" Value="filter1" />
                                <x:ListItem Text="过滤条件二" Value="filter2" />
                                <x:ListItem Text="过滤条件三" Value="filter3" />
                            </x:DropDownList>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
            <x:Panel ID="Panel8" ShowBorder="True" ShowHeader="false" BoxFlex="1" Layout="Fit"
                runat="server">
                <Toolbars>
                    <x:Toolbar ID="Toolbar2" runat="server">
                        <Items>
                            <x:Button ID="btnPopupWindow" Text="弹出对话框" runat="server">
                            </x:Button>
                            <x:ToolbarSeparator runat="server">
                            </x:ToolbarSeparator>
                            <x:Button ID="btnCheckSelection" Text="检查选中项状态" runat="server">
                            </x:Button>
                            <x:ToolbarSeparator runat="server">
                            </x:ToolbarSeparator>
                            <x:Button ID="btnConfirmButton" Text="删除选中行" runat="server">
                            </x:Button>
                        </Items>
                    </x:Toolbar>
                </Toolbars>
                <Items>
                    <x:Grid ID="Grid2" Title="Grid2" PageSize="80" ShowBorder="false" AllowPaging="true"
                        OnPageIndexChange="Grid2_PageIndexChange" ShowHeader="False" runat="server" EnableCheckBoxSelect="True"
                        DataKeyNames="Id,Name" OnSort="Grid2_Sort" EnableRowNumber="True">
                        <Columns>
                            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                            <x:TemplateField Width="60px" HeaderText="性别">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                                </ItemTemplate>
                            </x:TemplateField>
                            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
                            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                                HeaderText="分组"></x:ImageField>
                            <x:WindowField TextAlign="Center" Width="60px" WindowID="Window1" Icon="Pencil"
                                ToolTip="编辑" DataIFrameUrlFields="Id,Name" DataIFrameUrlFormatString="../grid/grid_iframe_window.aspx?id={0}&name={1}"
                                Title="编辑" IFrameUrl="~/alert.aspx" />
                            <x:LinkButtonField TextAlign="Center" Width="60px" Icon="Delete" ToolTip="删除" ConfirmText="确认删除？（功能未实现）"
                                CommandName="LinkButtonMyText" />
                        </Columns>
                    </x:Grid>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <x:Window ID="Window1" Title="弹出窗体" Popup="false" EnableIFrame="true" IFrameUrl="about:blank"
        EnableMaximize="true" Target="Top" EnableResize="true" runat="server" OnClose="Window1_Close"
        IsModal="true" Width="750px" EnableConfirmOnClose="true" Height="550px">
    </x:Window>
    </form>
</body>
</html>
