<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowexpander_expandall.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_rowexpander_expandall" %>

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
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="800px"
        Height="450px" runat="server" DataKeyNames="Id,Name">
        <Columns>
            <x:TemplateField RenderAsRowExpander="true">
                <ItemTemplate>
                    <div class="expander">
                        <p>
                            <strong>姓名：</strong><%# Eval("Name") %></p>
                        <p>
                            <strong>简介：</strong><%# Eval("Desc") %></p>
                    </div>
                </ItemTemplate>
            </x:TemplateField>
            <x:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <x:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
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
            <x:BoundField Width="100px" DataField="LogTime" DataFormatString="{0:yyyy-MM-dd}"
                HeaderText="注册日期" />
        </Columns>
    </x:Grid>
    <br />
    <x:Button ID="Button1" runat="server" Text="重新绑定表格" OnClick="Button1_Click">
    </x:Button>
    <br />
    <br />
    注：请注意如何在重新绑定数据后，保持所有扩展列的展开状态。
    <br />
    这个示例演示了如何通过编写JavaScript脚本来处理不常见的逻辑，如果你对JavaScript不熟悉请参考下一个完成相同功能的示例（一个属性搞定）。
    <br />
    </form>
    <script type="text/javascript">
        var gridClientID = '<%= Grid1.ClientID %>';

        function expandAllRows() {
            var grid = X(gridClientID);
            for (var i = 0, count = grid.store.getCount(); i < count; i++) {
                grid.plugins[0].expandRow(i);
            }
        }

        // 页面第一个加载完毕后执行的函数
        function onReady() {
            var grid = X(gridClientID);
            grid.addListener('viewready', function () {
                expandAllRows();
            });
        }

        // 页面AJAX回发后执行的函数
        function onAjaxReady() {
            expandAllRows();
        }
    </script>
</body>
</html>
