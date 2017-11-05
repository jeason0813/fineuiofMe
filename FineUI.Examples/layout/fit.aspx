<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fit.aspx.cs" Inherits="FineUI.Examples.layout.fit" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel3" Title="面板一（未设置Layout属性）" runat="server" Height="200px" Width="750px"
        BodyPadding="5px" ShowBorder="True" EnableBackgroundColor="false" ShowHeader="True">
        <Items>
            <x:Form ID="Form3" runat="server" ShowBorder="True" EnableBackgroundColor="true"
                BodyPadding="5px" ShowHeader="true" Title="表单">
                <Rows>
                    <x:FormRow>
                        <Items>
                            <x:Label ID="Label2" Label="文本" Text="文本内容" runat="server">
                            </x:Label>
                        </Items>
                    </x:FormRow>
                    <x:FormRow>
                        <Items>
                            <x:TextBox ID="TextBox2" Label="输入框" runat="server">
                            </x:TextBox>
                            <x:Button ID="Button2" Text="按钮" runat="server">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
        </Items>
    </x:Panel>
    <br />
    <x:Panel ID="Panel1" Title="面板二（Layout=Fit）" runat="server" Layout="Fit" Height="200px"
        BodyPadding="5px" Width="750px" ShowBorder="True" EnableBackgroundColor="false"
        ShowHeader="True">
        <Items>
            <x:Form ID="Form2" runat="server" EnableBackgroundColor="true" ShowBorder="True"
                BodyPadding="5px" ShowHeader="true" Title="表单">
                <Rows>
                    <x:FormRow>
                        <Items>
                            <x:Label ID="Label1" Label="文本" Text="文本内容" runat="server">
                            </x:Label>
                        </Items>
                    </x:FormRow>
                    <x:FormRow>
                        <Items>
                            <x:TextBox ID="TextBox1" Label="输入框" runat="server">
                            </x:TextBox>
                            <x:Button ID="Button1" Text="按钮" runat="server">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form></Items>
    </x:Panel>
    <br />
    <x:Panel ID="Panel2" Title="面板三（Layout=Fit）" runat="server" Layout="Fit" Height="300px"
        EnableBackgroundColor="true" BodyPadding="5px" Width="750px" ShowBorder="True"
        ShowHeader="True">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="Button4" Text="按钮一" runat="server">
                    </x:Button>
                    <x:Button ID="Button5" Text="按钮二" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:Grid ID="Grid1" Title="表格" PageSize="4" ShowBorder="true" ShowHeader="False"
                runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name" EnableRowNumber="True">
                <Columns>
                    <x:TemplateField Width="60px">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                        </ItemTemplate>
                    </x:TemplateField>
                    <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                    <x:TemplateField Width="60px" HeaderText="性别">
                        <ItemTemplate>
                            <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                            <asp:Label ID="Label4" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
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
            </x:Grid>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
