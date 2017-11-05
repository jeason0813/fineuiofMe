<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectprovince1.aspx.cs"
    Inherits="FineUI.Examples.iframe.selectprovince1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Title="表单" EnableBackgroundColor="true" BodyPadding="5px"
        runat="server" Width="500px" EnableCollapse="True">
        <Items>
            <x:DropDownList ID="ddlSheng" Label="请选择省份" runat="server">
            </x:DropDownList>
            <x:Button ID="Button1" EnablePostBack="false" runat="server" Text="从列表中选择">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <x:Window ID="Window1" Title="编辑" Popup="false" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" IsModal="True" Width="580px"
        Height="460px">
    </x:Window>
    <x:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </x:Label>
    <br />
    </form>
    <script>
        var shengClientID = '<%= ddlSheng.ClientID %>';

        function selectProvince(name) {
            X(shengClientID).setValue(name);
        }
    </script>
</body>
</html>
