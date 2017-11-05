<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_editor_cell_databind.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_editor_cell_databind" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="850px" Height="350px"
        runat="server" DataKeyNames="Id,Name" AllowCellEditing="true" ClicksToEdit="1">
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
                    <x:DropDownList ID="ddlGender" Required="true" runat="server">
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
            <x:RenderField ExpandUnusedSpace="true" ColumnID="Major" DataField="Major" FieldType="String"
                HeaderText="所学专业">
                <Editor>
                    <x:DropDownList ID="ddlMajor" Required="true" runat="server">
                    </x:DropDownList>
                </Editor>
            </x:RenderField>
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

        var ddlGenderID = '<%= ddlGender.ClientID %>';

        function renderGender(value, metadata, record, rowIndex, colIndex) {
            return X(ddlGenderID).x_getTextByValue(value);
        }


    </script>
</body>
</html>
