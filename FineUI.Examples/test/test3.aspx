<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="FineUI.Examples.test3" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" PageSize="20" DataKeyNames="Remarks" runat="server" AllowPaging="True"
        EnableCheckBoxSelect="True" EnableRowNumber="True" IsDatabasePaging="false" ShowBorder="true"
        ShowHeader="true" Width="500px" Height="200px" EnableMultiSelect="False" OnPageIndexChange="Grid1_PageIndexChange">
        <Columns>
            <x:BoundField TextAlign="Center" ExpandUnusedSpace="true" DataField="Remarks" DataFormatString="{0}"
                HeaderText="备注" />
        </Columns>
        <PageItems>
            <x:ToolbarSeparator ID="ToolbarSeparator4" runat="server">
            </x:ToolbarSeparator>
            <x:Button runat="server" ID="btnRefresh" Icon="DatabaseRefresh" OnClick="btnRefresh_Click"
                ToolTip="刷新">
            </x:Button>
        </PageItems>
    </x:Grid>
    </form>
</body>
</html>
