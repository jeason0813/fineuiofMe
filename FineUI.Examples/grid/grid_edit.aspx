<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit.aspx.cs" Inherits="FineUI.Examples.grid.grid_edit" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="800px" runat="server"
        DataKeyNames="Id,Name">
        <Columns>
            <x:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <x:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                    <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <x:TemplateField HeaderText="分组" Width="100px">
                <ItemTemplate>
                    <asp:TextBox ID="tbxGroupName" runat="server" Width="80px" TabIndex='<%# Container.DataItemIndex + 10 %>'
                        Text='<%# Eval("Group") %>'></asp:TextBox>
                </ItemTemplate>
            </x:TemplateField>
        </Columns>
    </x:Grid>
    <br />
    请注意如何实现：
    <ul>
        <li>使用Tab键遍历所有的文本输入框（通过TextBox的TabIndex属性）</li>
        <li>使用Enter键遍历所有的文本输入框（JavaScript函数registerEnterEvent）</li>
        <li>点击输入框即可选中全部文本（JavaScript函数registerSelectEvent）</li>
    </ul>
    <br />
    <x:Button runat="server" ID="Button1" OnClick="Button1_Click" CssClass="inline" Text="获取用户输入的分组值">
    </x:Button>
    <x:Button ID="Button2" runat="server" Text="重新绑定表格" OnClick="Button2_Click">
    </x:Button>
    <br />
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    <br />
    </form>
    <script type="text/javascript">
        var gridClientID = '<%= Grid1.ClientID %>';

        function registerSelectEvent() {
            var grid = X(gridClientID);

            grid.el.on('click', function (evt, el) {
                el.select();
            }, { delegate: '.x-grid-tpl input' });
        }

        function registerEnterEvent() {
            var grid = X(gridClientID);
            /*
            if (grid.el.getAttribute('data-event-keydown-registered')) {
            return;
            }
            grid.el.set({ 'data-event-keydown-registered': true });
            */

            grid.el.on("keydown", function (evt, el) {
                if (evt.getKey() == evt.ENTER) {
                    var nextRow = Ext.get(el).parent('.x-grid3-row').next();
                    if (nextRow) {
                        nextRow.query('.x-grid-tpl input')[0].select();
                    }
                }
            }, { delegate: '.x-grid-tpl input' });
        }

        function onReady() {
            var grid = X(gridClientID);

            grid.on('viewready', function () {
                registerSelectEvent();
                registerEnterEvent();
            });
        }

    </script>
</body>
</html>
