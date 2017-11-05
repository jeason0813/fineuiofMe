<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="FineUI.Examples.test2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" AutoSizePanelID="TabStrip1" />
    <x:TabStrip ID="TabStrip1" runat="server" ActiveTabIndex="0" ShowBorder="True">
        <Tabs>
            <x:Tab ID="ZtTab" runat="server" EnableBackgroundColor="true" Layout="Fit">
                <Items>
                    <x:Grid ID="ZtGrid" PageSize="20" DataKeyNames="Remarks" runat="server" AllowPaging="True"
                        EnableCheckBoxSelect="True" EnableRowNumber="True" IsDatabasePaging="True" ShowBorder="False"
                        ShowHeader="False" EnableMultiSelect="False" ExpandAllRowExpanders="true">
                        <Columns>
                            <x:BoundField TextAlign="Center" ExpandUnusedSpace="true" DataField="Remarks" DataFormatString="{0}"
                                HeaderText="备注" />
                        </Columns>
                        <PageItems>
                            <x:ToolbarSeparator ID="ToolbarSeparator4" runat="server">
                            </x:ToolbarSeparator>
                            <x:Button IconUrl="~/images/collapse-all.gif" runat="server" EnablePress="true" Pressed="true"
                                ID="btnZtShowRowExpanders" ToolTip="显示或隐藏详细信息">
                            </x:Button>
                            <x:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                            </x:ToolbarSeparator>
                            <x:Button runat="server" ID="butZtRefresh" Icon="DatabaseRefresh" OnClick="butRefresh_Click"
                                ToolTip="刷新">
                            </x:Button>
                        </PageItems>
                    </x:Grid>
                </Items>
            </x:Tab>
            <x:Tab ID="XhycTab" runat="server" EnableBackgroundColor="true" Layout="Fit">
                <Items>
                    <x:Grid ID="XhycGrid" PageSize="20" DataKeyNames="Remarks" runat="server" AllowPaging="True"
                        EnableCheckBoxSelect="True" EnableRowNumber="True" IsDatabasePaging="True" ShowBorder="False"
                        ShowHeader="False" EnableMultiSelect="False" ExpandAllRowExpanders="true">
                        <Columns>
                            <x:BoundField TextAlign="Center" ExpandUnusedSpace="true" DataField="Remarks" DataFormatString="{0}"
                                HeaderText="备注" />
                        </Columns>
                        <PageItems>
                            <x:ToolbarSeparator ID="ToolbarSeparator5" runat="server">
                            </x:ToolbarSeparator>
                            <x:Button IconUrl="~/images/collapse-all.gif" runat="server" EnablePress="true" Pressed="true"
                                ID="btnXhycShowRowExpanders" ToolTip="显示或隐藏详细信息">
                            </x:Button>
                            <x:ToolbarSeparator ID="ToolbarSeparator3" runat="server">
                            </x:ToolbarSeparator>
                            <x:Button runat="server" ID="butXhycRefresh" Icon="DatabaseRefresh" OnClick="butRefresh_Click"
                                ToolTip="刷新">
                            </x:Button>
                        </PageItems>
                    </x:Grid>
                </Items>
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    </form>
</body>
</html>
