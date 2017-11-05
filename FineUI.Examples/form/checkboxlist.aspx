<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlist.aspx.cs" Inherits="FineUI.Examples.form.checkboxlist" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Width="700px" runat="server" LabelWidth="160px"
        EnableBackgroundColor="true" BodyPadding="5px" ShowBorder="True" ShowHeader="True"
        Title="简单表单">
        <Items>
            <x:CheckBoxList ID="CheckBoxList1" Label="列表一" runat="server">
                <x:CheckItem Text="可选项 1" Value="value1" />
                <x:CheckItem Text="可选项 2" Value="value2" Selected="true" />
                <x:CheckItem Text="可选项 3" Value="value3" Selected="true" />
            </x:CheckBoxList>
            <x:Button ID="btnServerSetSelectedValue" CssClass="inline" Text="选中上面列表中的第一项和第三项" OnClick="btnServerSetSelectedValue_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnServerGetSelectedValue" CssClass="inline" Text="获取上面列表的选中项" OnClick="btnServerGetSelectedValue_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnClientGetSelectedValue" Text="获取上面列表的选中项（JavaScript 脚本）" EnablePostBack="false"
                OnClientClick="alertSelectedValue();" runat="server">
            </x:Button>
            <x:Label runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="CheckBoxList2" Label="列表二（一列）" ColumnNumber="1" runat="server">
            </x:CheckBoxList>
            <x:Label ID="Label1" runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="rblAutoPostBack" AutoPostBack="true" OnSelectedIndexChanged="rblAutoPostBack_SelectedIndexChanged"
                Label="列表三（自动回发）" ColumnNumber="3" runat="server" ShowRedStar="true" Required="true">
                <x:CheckItem Text="可选项 1" Value="value1" />
                <x:CheckItem Text="可选项 2" Value="value2" />
                <x:CheckItem Text="可选项 3" Value="value3" />
                <x:CheckItem Text="可选项 4" Value="value4" />
                <x:CheckItem Text="可选项 5" Value="value5" />
                <x:CheckItem Text="可选项 6" Value="value6" />
                <x:CheckItem Text="可选项 7" Value="value7" />
                <x:CheckItem Text="可选项 8" Value="value8" />
            </x:CheckBoxList>
            <x:Label ID="Label2" runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="rblVertical" Label="列表四（竖排）" ColumnNumber="3" ColumnVertical="true"
                runat="server" ShowRedStar="true" Required="true">
                <x:CheckItem Text="可选项 1" Value="value1" />
                <x:CheckItem Text="可选项 2" Value="value2" />
                <x:CheckItem Text="可选项 3" Value="value3" />
                <x:CheckItem Text="可选项 4" Value="value4" />
                <x:CheckItem Text="可选项 5" Value="value5" />
                <x:CheckItem Text="可选项 6" Value="value6" />
                <x:CheckItem Text="可选项 7" Value="value7" />
                <x:CheckItem Text="可选项 8" Value="value8" />
            </x:CheckBoxList>
            <x:Button runat="server" ID="btnSubmit" ValidateForms="SimpleForm1" Text="提交表单"
                OnClick="btnSubmit_Click">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
    <script type="text/javascript">

        function alertSelectedValue() {
            var list2 = X('<%= CheckBoxList1.ClientID %>');
            var selectedCheckboxs = list2.getValue(), selectedValues, i;

            if (selectedCheckboxs.length) {
                selectedValues = [];
                for (i = 0; i < selectedCheckboxs.length; i++) {
                    selectedValues.push(selectedCheckboxs[i].getRawValue());
                }
                top.X.util.alert("列表一选中项的值：" + selectedValues.join(','));
            } else {
                top.X.util.alert("列表一没有选中项！");
            }
        }
    
    </script>
</body>
</html>
