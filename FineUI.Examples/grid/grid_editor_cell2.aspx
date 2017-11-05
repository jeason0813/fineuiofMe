<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_editor_cell2.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_editor_cell2" %>

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
        DataKeyNames="Id,Name" AllowCellEditing="true" ClicksToEdit="1">
        <Columns>
            <x:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:RenderField Width="100px" DataField="Name" HeaderText="姓名">
                <Editor>
                    <x:TextBox ID="tbxEditorName" runat="server">
                    </x:TextBox>
                </Editor>
            </x:RenderField>
            <x:RenderField Width="100px" DataField="Gender" FieldType="Int" RendererFunction="renderGender" HeaderText="性别">
                <Editor>
                    <x:DropDownList runat="server">
                        <x:ListItem Text="男" Value="1" />
                        <x:ListItem Text="女" Value="0" />
                    </x:DropDownList>
                </Editor>
            </x:RenderField>
            <x:RenderField Width="100px" DataField="EntranceYear" HeaderText="入学年份">
                <Editor>
                    <x:NumberBox ID="tbxEditorEntranceYear" NoDecimal="true" NoNegative="true" MinValue="2000"
                        MaxValue="2010" runat="server">
                    </x:NumberBox>
                </Editor>
            </x:RenderField>
            <x:RenderField Width="100px" DataField="AtSchool" HeaderText="是否在校">
                <Editor>
                    <x:CheckBox runat="server"></x:CheckBox>
                </Editor>
            </x:RenderField>
            <x:RenderField Width="100px" DataField="LogTime" FieldType="Date" Renderer="Date"
                RendererArgument="yyyy-MM-dd" HeaderText="登记时间">
                <Editor>
                    <x:DatePicker runat="server">
                    </x:DatePicker>
                </Editor>
            </x:RenderField>
            <x:RenderField Width="100px" DataField="Major" ExpandUnusedSpace="true" HeaderText="所学专业">
                <Editor>
                    <x:TextBox ID="tbxEditorMajor" runat="server">
                    </x:TextBox>
                </Editor>
            </x:RenderField>
        </Columns>
    </x:Grid>
    <br />
    <br />
    <br />
    <br />
    <x:Button ID="Button2" runat="server" Text="重新绑定表格" OnClick="Button2_Click">
    </x:Button>
    <br />
    <x:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="获取用户输入的分组值">
    </x:Button>
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
