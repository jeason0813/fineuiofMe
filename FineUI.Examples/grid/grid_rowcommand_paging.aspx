<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowcommand_paging.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_rowcommand_paging" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .x-grid3-row-body .expander
        {
            padding: 5px;
        }
        .x-grid3-row-body .expander p
        {
            padding: 5px;
        }
        .x-grid3-row-body .expander strong
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" ShowBorder="true" ShowHeader="true" AutoHeight="true"
        AllowPaging="true" PageSize="5" runat="server" DataKeyNames="Id,Name" Width="800px"
        Height="300px" OnRowCommand="Grid1_RowCommand" EnableRowNumber="false" EnableCheckBoxSelect="false"
        OnPageIndexChange="Grid1_PageIndexChange">
        <Columns>
            <x:TemplateField ColumnID="expander" RenderAsRowExpander="true">
                <ItemTemplate>
                    <div class="expander">
                        <p>
                            <strong>姓名：</strong><%# Eval("Name") %></p>
                        <p>
                            <strong>简介：</strong><%# Eval("Desc") %></p>
                    </div>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <x:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <x:CheckBoxField ColumnID="CheckBoxField1" Width="80px" RenderAsStaticField="false"
                DataField="AtSchool" HeaderText="是否在校" />
            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></x:ImageField>
            <x:LinkButtonField HeaderText="&nbsp;" Width="60px" CommandName="Action1" Text="按钮 1" />
            <x:LinkButtonField HeaderText="&nbsp;" Width="60px" ConfirmText="你确定要这么做么？" ConfirmTarget="Top"
                CommandName="Action2" Text="按钮 2" />
            <x:LinkButtonField HeaderText="&nbsp;" Width="60px" ConfirmText="你确定要这么做么？" ConfirmTarget="Top"
                CommandName="Action2" Text="按钮 3" />
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
