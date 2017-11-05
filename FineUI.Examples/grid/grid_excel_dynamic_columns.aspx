<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_excel_dynamic_columns.aspx.cs" EnableEventValidation="false"
    Inherits="FineUI.Examples.data.grid_excel_dynamic_columns" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:Grid ID="Grid1" runat="server" Width="800px" EnableCheckBoxSelect="true"
            Title="表格（动态创建的列）">
        </x:Grid>
        <br />
        <x:Button ID="Button1" runat="server" Text="导出为Excel文件" OnClick="ExportExcel" EnableAjax="false" DisableControlBeforePostBack="false">
        </x:Button>
        <br />
        <x:Label ID="labResult" EncodeText="false" runat="server">
        </x:Label>
    </form>
</body>
</html>
