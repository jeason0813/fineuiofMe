<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_centercolumn.aspx.cs"
    Inherits="FineUI.Examples.data.grid_centercolumn" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        /* .x-grid3-hd-ct4
        {
            text-align: center;
        }
        .x-grid3-col-ct4 
        {
            text-align: center;
        }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" ShowBorder="true" ShowHeader="true" Width="900px"
        runat="server" EnableCheckBoxSelect="true" DataKeyNames="Id,Name" EnableRowNumber="True">
        <Columns>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <x:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <x:CheckBoxField Width="150px" TextAlign="Center" RenderAsStaticField="true" DataField="AtSchool"
                HeaderText="是否在校（居中）" />
            <x:HyperLinkField HeaderText="所学专业（居中）" TextAlign="Center" DataToolTipField="Major"
                DataTextField="Major" DataTextFormatString="{0}" DataNavigateUrlFields="Major"
                DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}" DataNavigateUrlFieldsEncode="true"
                Target="_blank" ExpandUnusedSpace="True" />
            <x:ImageField Width="150px" TextAlign="Right" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组（靠右）"></x:ImageField>
        </Columns>
    </x:Grid>
    <br />
    <br />
    <br />
    <x:HiddenField ID="highlightRows" runat="server">
    </x:HiddenField>
    </form>
</body>
</html>
