<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="test.aspx.cs"
    Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:Form ID="Form2" runat="server" Height="36px" BodyPadding="5px" ShowHeader="false"
            ShowBorder="false" LabelAlign="Right" EnableBackgroundColor="true">
            <Rows>
                <x:FormRow ID="FormRow1" runat="server">
                    <Items>
                        <x:TwinTriggerBox runat="server" EmptyText="输入要搜索的用工单位" Label="单位名称" ID="txtQUnitName"
                            ShowTrigger1="false" OnTrigger2Click="btnQuery_Click" Trigger1Icon="Clear" Trigger2Icon="Search" />
                        <x:DropDownList ID="cboQRealDate" runat="server" Required="true" ShowRedStar="true"
                            Label="自然月份" AutoPostBack="true" OnSelectedIndexChanged="cboQRealDate_SelectedIndexChanged" />
                        <x:RadioButtonList ID="rboIsWork" Label="状态" runat="server" AutoPostBack="true"
                            OnSelectedIndexChanged="rboIsWork_SelectedIndexChanged" Width="200px">
                            <x:RadioItem Text="当月新增" Value="0" Selected="true" />
                            <x:RadioItem Text="当月减员" Value="1" />
                        </x:RadioButtonList>
                    </Items>
                </x:FormRow>
            </Rows>
        </x:Form>
    </form>
</body>
</html>
