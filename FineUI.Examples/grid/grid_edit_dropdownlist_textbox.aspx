<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_dropdownlist_textbox.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_edit_dropdownlist_textbox" %>

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
        DataKeyNames="Id,Name" OnRowDataBound="Grid1_RowDataBound">
        <Columns>
            <x:TemplateField Width="80px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <x:TemplateField Width="160px" HeaderText="性别">
                <ItemTemplate>
                    <asp:TextBox runat="server" ID="tbxGender" CssClass="gender" Width="50px"></asp:TextBox>
                    <asp:DropDownList runat="server" Width="50px" CssClass="gender" ID="ddlGender">
                        <asp:ListItem Text="男" Value="男"></asp:ListItem>
                        <asp:ListItem Text="女" Value="女"></asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
        </Columns>
    </x:Grid>
    <br />
    <x:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="获取用户输入的性别">
    </x:Button>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    <br />
    </form>
    <script type="text/javascript">
        var gridClientID = '<%= Grid1.ClientID %>';

        function registerSyncEvent() {
            var grid = X(gridClientID);

            grid.el.on("change", function (evt, el) {

                var row = Ext.get(el).parent('.x-grid3-row');
                row.query('input.gender')[0].value = el.value;

            }, { delegate: '.x-grid-tpl select.gender' });

        }

        function onReady() {
            var grid = X(gridClientID);

            grid.on('viewready', function () {
                registerSyncEvent();
            });
        }

    </script>
</body>
</html>
