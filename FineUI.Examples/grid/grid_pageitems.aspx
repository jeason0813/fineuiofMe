<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_pageitems.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_pageitems" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" PageSize="5" ShowBorder="true" ShowHeader="true" AutoHeight="true"
        AllowPaging="true" runat="server" EnableCheckBoxSelect="True" Width="800px" Height="350px"
        DataKeyNames="Id,Name" OnPageIndexChange="Grid1_PageIndexChange" EnableRowNumber="True" EmptyText="没有数据！">
        <Columns>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <x:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></x:ImageField>
        </Columns>
        <PageItems>
            <x:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
            </x:ToolbarSeparator>
            <x:Button Text="清空表格数据" runat="server" ID="btnClearData" OnClick="btnClearData_Click">
            </x:Button>
            <x:Button Text="重新绑定表格数据" runat="server" ID="btnRebind" IconUrl="~/extjs/res/images/default/grid/refresh.gif"
                OnClick="btnRebindData_Click">
            </x:Button>
            <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
            </x:ToolbarSeparator>
            <x:Button Text="选中所有行" runat="server" ID="btnSelectAll" OnClick="btnSelectAll_Click">
            </x:Button>
            <x:Button Text="清空选中行" runat="server" ID="btnClearSelect" OnClick="btnClearSelect_Click">
            </x:Button>
        </PageItems>
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
