<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_checkboxfield_rowcheckall.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_checkboxfield_rowcheckall" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" Width="800px" ShowBorder="true" ShowHeader="true" AutoHeight="true"
        runat="server" EnableCheckBoxSelect="True" CheckBoxSelectOnly="true" DataKeyNames="Id,Name"
        EnableRowNumber="True" EnableRowClickEvent="true" OnRowClick="Grid1_RowClick">
        <Columns>
            <x:BoundField Width="100px" ExpandUnusedSpace="true" DataField="Name" DataFormatString="{0}"
                HeaderText="姓名" />
            <x:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="EntranceYear" HeaderText="入学年份" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校1" />
            <x:CheckBoxField ColumnID="CheckBoxField1" Width="100px" RenderAsStaticField="false"
                DataField="AtSchool" HeaderText="是否在校1" />
            <x:CheckBoxField ColumnID="CheckBoxField2" Width="100px" RenderAsStaticField="false"
                DataField="AtSchool" HeaderText="是否在校2" />
            <x:CheckBoxField ColumnID="CheckBoxField3" Width="100px" RenderAsStaticField="false"
                DataField="AtSchool" HeaderText="是否在校3" />
        </Columns>
    </x:Grid>
    <br />
    注：只能通过第一个复选框来选中行和取消选中行。
    <br />
    <br />
    <x:Button ID="Button1" runat="server" Text="选中行复选框的状态" OnClick="Button1_Click">
    </x:Button>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    </form>
</body>
</html>
