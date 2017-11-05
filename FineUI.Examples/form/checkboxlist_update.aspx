<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlist_update.aspx.cs"
    Inherits="FineUI.Examples.form.checkboxlist_update" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Width="700px" runat="server" LabelWidth="120px"
        EnableBackgroundColor="true" BodyPadding="5px" ShowBorder="True" ShowHeader="True"
        Title="简单表单">
        <Items>
            <x:CheckBoxList ID="CheckBoxList1" Label="列表一" runat="server">
                <x:CheckItem Text="可选项 1" Value="value1" />
                <x:CheckItem Text="可选项 2" Value="value2" Selected="true" />
                <x:CheckItem Text="可选项 3" Value="value3" Selected="true" />
            </x:CheckBoxList>
            <x:Button ID="btnUpdateList1" CssClass="inline" Text="更新列表一" OnClick="btnUpdateList1_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnCheckedItemsList1" Text="获取列表一的选中项" OnClick="btnCheckedItemsList1_Click"
                runat="server">
            </x:Button>
            <x:Label runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="CheckBoxList2" Label="列表二（竖排）" ColumnNumber="3" ColumnVertical="true"
                runat="server">
            </x:CheckBoxList>
            <x:Button ID="btnUpdateList2" CssClass="inline" Text="更新列表二" OnClick="btnUpdateList2_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnCheckedItemsList2" Text="获取列表二的选中项" OnClick="btnCheckedItemsList2_Click"
                runat="server">
            </x:Button>
            <x:Label ID="Label1" runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="CheckBoxList4" Label="列表四（空列表）" ColumnNumber="3" ColumnVertical="false"
                runat="server">
            </x:CheckBoxList>
            <x:Button ID="btnUpdateList4" CssClass="inline" Text="更新列表四" OnClick="btnUpdateList4_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnCheckedItemsList4" Text="获取列表四的选中项" OnClick="btnCheckedItemsList4_Click"
                runat="server">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <br />
    <x:CheckBoxList ID="CheckBoxList3" Width="700px" Label="列表三" ColumnNumber="3" ColumnVertical="false"
        runat="server">
        <x:CheckItem Text="可选项 1" Value="value1" />
        <x:CheckItem Text="可选项 2" Value="value2" />
        <x:CheckItem Text="可选项 3" Value="value3" />
        <x:CheckItem Text="可选项 4" Value="value4" />
        <x:CheckItem Text="可选项 5" Value="value5" Selected="true" />
        <x:CheckItem Text="可选项 6" Value="value6" Selected="true" />
        <x:CheckItem Text="可选项 7" Value="value7" Selected="true" />
        <x:CheckItem Text="可选项 8" Value="value8" />
    </x:CheckBoxList>
    <x:Button ID="btnUpdateList3" CssClass="inline" Text="更新列表三" OnClick="btnUpdateList3_Click"
        runat="server">
    </x:Button>
    <x:Button ID="btnCheckedItemsList3" Text="获取列表三的选中项" OnClick="btnCheckedItemsList3_Click"
        runat="server">
    </x:Button>
    <br />
    </form>
</body>
</html>
