<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_dynamic_columns.aspx.cs"
    Inherits="FineUI.Examples.data.grid_dynamic_columns" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" runat="server" Width="650px" EnableCheckBoxSelect="true" EnableRowNumber="true"
        Title="表格（动态创建的列）">
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
