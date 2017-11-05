<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_forceselection.aspx.cs"
    Inherits="FineUI.Examples.dropdownlist.dropdownlist_forceselection" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:DropDownList runat="server" ID="DropDownList1" EnableEdit="true" ForceSelection="true">
        <x:ListItem Text="选项 1" Value="Value1" Selected="true" />
        <x:ListItem Text="选项 2（不可选择）" Value="Value2" EnableSelect="false" />
        <x:ListItem Text="选项 3（不可选择）" Value="Value3" EnableSelect="false" />
        <x:ListItem Text="选项 4" Value="Value4" />
        <x:ListItem Text="选项 5" Value="Value5" />
        <x:ListItem Text="选项 6" Value="Value6" />
        <x:ListItem Text="选项 7" Value="Value7" />
        <x:ListItem Text="选项 8" Value="Value8" />
        <x:ListItem Text="选项 9" Value="Value9" />
        <x:ListItem Text="普通型1 < L > 1.5" Value="普通型1 < L > 1.5" />
    </x:DropDownList>
    <br />
    <x:Button ID="btnSelectItem6" Text="选中“选项 6”" runat="server" OnClick="btnSelectItem6_Click"
        CssClass="inline">
    </x:Button>
    <x:Button ID="btnGetSelection" Text="获取此下拉列表的选中项" runat="server" OnClick="btnGetSelection_Click">
    </x:Button>
    <br />
    <x:Label runat="server" ID="labResult">
    </x:Label>
    <br />
    <br />
    </form>
</body>
</html>
