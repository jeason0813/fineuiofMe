<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_save_manual.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_edit_save_manual" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .success
        {
            color: Green;
        }
        .error
        {
            color: Red;
        }
        .bold
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel2" runat="server" />
    <x:Panel ID="Panel2" runat="server" ShowBorder="false" Layout="HBox" BoxConfigAlign="Stretch"
        BoxConfigPosition="Start" BoxConfigPadding="5" BoxConfigChildMargin="0 5 0 0"
        ShowHeader="false">
        <Items>
            <x:Grid ID="Grid1" ShowBorder="true" BoxFlex="1" ShowHeader="true" Title="表格" runat="server"
                DataKeyNames="Id,Name" EnableMultiSelect="false" EnableRowSelectEvent="true" OnRowSelect="Grid1_RowSelect"
                EnableTextSelection="true">
                <Toolbars>
                    <x:Toolbar runat="server">
                        <Items>
                            <x:ToolbarFill runat="server">
                            </x:ToolbarFill>
                            <x:Button runat="server" OnClick="btnSave_Click" Text="保存用户输入数据" ID="btnSave">
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
                    <x:TemplateField HeaderText="语文成绩" Width="60px">
                        <ItemTemplate>
                            <asp:TextBox runat="server" Width="98%" ID="tbxTableChineseScore" CssClass="ChineseScore"
                                TabIndex='<%# Container.DataItemIndex + 10 %>' Text='<%# Eval("ChineseScore") %>'></asp:TextBox>
                        </ItemTemplate>
                    </x:TemplateField>
                    <x:TemplateField HeaderText="数学成绩" Width="60px">
                        <ItemTemplate>
                            <asp:TextBox runat="server" Width="98%" ID="tbxTableMathScore" CssClass="MathScore"
                                TabIndex='<%# Container.DataItemIndex + 100 %>' Text='<%# Eval("MathScore") %>'></asp:TextBox>
                        </ItemTemplate>
                    </x:TemplateField>
                    <x:TemplateField HeaderText="总成绩" Width="60px">
                        <ItemTemplate>
                            <asp:Label runat="server" CssClass="TotalScore" Text='<%# Eval("TotalScore") %>'></asp:Label>
                        </ItemTemplate>
                    </x:TemplateField>
                </Columns>
            </x:Grid>
            <x:SimpleForm ID="SimpleForm1" runat="server" Width="300px" LabelAlign="Left" LabelWidth="60px"
                Title="详细信息" BodyPadding="5px 10px" BoxMargin="0">
                <Items>
                    <x:Label runat="server" ID="labName" Label="姓名" Text="">
                    </x:Label>
                    <x:Label runat="server" ID="labGender" Label="性别" Text="">
                    </x:Label>
                    <x:Label runat="server" ID="labEntranceYear" Label="入学年份" Text="">
                    </x:Label>
                    <x:Label runat="server" ID="labAtSchool" Label="是否在校" Text="">
                    </x:Label>
                    <x:Label runat="server" ID="labMajor" Label="所学专业" Text="">
                    </x:Label>
                    <x:Label runat="server" ID="labDesc" Label="个人简介" Text="">
                    </x:Label>
                    <x:Label runat="server" ID="labChineseScore" Label="语文成绩" Text="">
                    </x:Label>
                    <x:Label runat="server" ID="labMathScore" Label="数学成绩" Text="">
                    </x:Label>
                    <x:Label runat="server" ID="labTotalScore" Label="总成绩" Text="">
                    </x:Label>
                </Items>
            </x:SimpleForm>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
