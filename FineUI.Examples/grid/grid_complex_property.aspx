<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_complex_property.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_complex_property" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" PageSize="3" ShowBorder="true" AutoHeight="true"
        Width="800px" ShowHeader="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Year"
        EnableRowNumber="True">
        <Columns>
            <x:BoundField DataField="MyText" SortField="MyText" DataFormatString="{0}" HeaderText="姓名" />
            <x:BoundField Width="60px" DataField="Year" HeaderText="入学年份" />
            <x:CheckBoxField Width="60px" DataField="MyCheckBox" HeaderText="是否在校" />
            <x:TemplateField HeaderText="是否在校（模板列）">
                <ItemTemplate>
                    <%-- Container.DataItem should be System.Data.DataRowView or Custom Class --%>
                    <%-- <%# DataBinder.Eval(Container.DataItem, "MyText") %> --%>
                    <%# GetInSchool(Eval("MyCheckBox")) %>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField ExpandUnusedSpace="True" DataField="Info.UserName" DataFormatString="{0}"
                HeaderText="老师（二级属性）" />
        </Columns>
    </x:Grid>
    </form>
</body>
</html>
