<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_hdmenu_sorting.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_hdmenu_sorting" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" AllowSorting="true" SortColumnIndex="2" SortDirection="ASC"
        Width="750px" AutoHeight="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name,AtSchool"
        EnableRowNumber="True" OnSort="Grid1_Sort" EnableHeaderMenu="true" EnableColumnHide="false">
        <Columns>
            <x:BoundField Width="100px" SortField="Name" DataField="Name" DataFormatString="{0}"
                HeaderText="姓名" />
            <x:TemplateField Width="60px" SortField="Gender" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" ColumnID="year" SortField="EntranceYear" DataField="EntranceYear"
                HeaderText="入学年份" />
            <x:CheckBoxField Width="60px" SortField="AtSchool" RenderAsStaticField="true" DataField="AtSchool"
                HeaderText="是否在校" />
            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></x:ImageField>
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
