<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_simulate_tree_database_paging.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_simulate_tree_database_paging" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" ShowBorder="true" ShowHeader="true" AutoHeight="true"
        runat="server" EnableCheckBoxSelect="True" AllowPaging="true" PageSize="1" IsDatabasePaging="true"
        DataKeyNames="Id,Name" Width="800px" Height="450px" EnableRowNumber="True" OnPageIndexChange="Grid1_PageIndexChange"
        RowNumberWidth="24px">
        <Columns>
            <x:BoundField DataField="Name" DataSimulateTreeLevelField="TreeLevel" DataFormatString="{0}"
                HeaderText="地区" ExpandUnusedSpace="True" />
            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></x:ImageField>
        </Columns>
    </x:Grid>
    </form>
</body>
</html>
