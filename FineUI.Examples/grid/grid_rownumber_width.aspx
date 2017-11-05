<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rownumber_width.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_rownumber_width" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" Width="800px" PageSize="10" ShowBorder="true" ShowHeader="true"
        AutoHeight="true" AllowPaging="true" runat="server" EnableCheckBoxSelect="True"
        DataKeyNames="Id" IsDatabasePaging="true" OnPageIndexChange="Grid1_PageIndexChange"
        EnableRowNumber="True" EnableRowNumberPaging="true" RowNumberWidth="24px">
        <Columns>
            <x:BoundField Width="150px" DataField="Id" HeaderText="ID" />
            <x:BoundField ExpandUnusedSpace="true" DataField="EntranceTime" HeaderText="时间" />
        </Columns>
    </x:Grid>
    <br />
    <x:Button ID="Button1" runat="server" Text="选中了哪些行" OnClick="Button1_Click">
    </x:Button>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    </form>
</body>
</html>
