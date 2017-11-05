<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_editor_cell_delete.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_editor_cell_delete" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="850px" Height="400px"
        runat="server" DataKeyNames="Id,Name" AllowCellEditing="true" ClicksToEdit="2"
        OnRowCommand="Grid1_RowCommand">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="btnDelete" Text="删除选中行" Icon="Delete" OnClick="btnDelete_Click" runat="server">
                    </x:Button>
                    <x:ToolbarFill runat="server">
                    </x:ToolbarFill>
                    <x:Button ID="btnReset" Text="重置表格数据" EnablePostBack="false" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Columns>
            <x:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:RenderField Width="100px" ColumnID="Name" DataField="Name" FieldType="String"
                HeaderText="姓名">
                <Editor>
                    <x:TextBox ID="tbxEditorName" Required="true" runat="server">
                    </x:TextBox>
                </Editor>
            </x:RenderField>
            <x:RenderField Width="100px" ColumnID="Gender" DataField="Gender" FieldType="Int"
                RendererFunction="renderGender" HeaderText="性别">
                <Editor>
                    <x:DropDownList Required="true" runat="server">
                        <x:ListItem Text="男" Value="1" />
                        <x:ListItem Text="女" Value="0" />
                    </x:DropDownList>
                </Editor>
            </x:RenderField>
            <x:RenderField Width="100px" ColumnID="EntranceYear" DataField="EntranceYear" FieldType="Int"
                HeaderText="入学年份">
                <Editor>
                    <x:NumberBox ID="tbxEditorEntranceYear" NoDecimal="true" NoNegative="true" MinValue="2000"
                        MaxValue="2010" runat="server">
                    </x:NumberBox>
                </Editor>
            </x:RenderField>
            <x:RenderField Width="100px" ColumnID="EntranceDate" DataField="EntranceDate" FieldType="Date"
                Renderer="Date" RendererArgument="yyyy-MM-dd" HeaderText="入学日期">
                <Editor>
                    <x:DatePicker ID="DatePicker1" Required="true" runat="server">
                    </x:DatePicker>
                </Editor>
            </x:RenderField>
            <x:RenderCheckField Width="100px" ColumnID="AtSchool" DataField="AtSchool" HeaderText="是否在校" />
            <x:RenderField Width="100px" ColumnID="Major" DataField="Major" FieldType="String"
                ExpandUnusedSpace="true" HeaderText="所学专业">
                <Editor>
                    <x:TextBox ID="tbxEditorMajor" Required="true" runat="server">
                    </x:TextBox>
                </Editor>
            </x:RenderField>
            <x:LinkButtonField HeaderText="&nbsp;" Width="60px" ConfirmText="删除选中行？" ConfirmTarget="Top"
                CommandName="Delete" Icon="Delete" />
        </Columns>
    </x:Grid>
    <br />
    <x:Button ID="Button2" runat="server" Text="保存数据" OnClick="Button2_Click">
    </x:Button>
    <br />
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    <br />
    </form>
    <script>

        function renderGender(value, metadata, record, rowIndex, colIndex) {
            return value == 1 ? '男' : '女';
        }



    </script>
</body>
</html>
