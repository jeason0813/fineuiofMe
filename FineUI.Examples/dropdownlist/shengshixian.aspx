<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shengshixian.aspx.cs" Inherits="FineUI.Examples.data.shengshixian" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Width="350px" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        Title="简单表单">
        <Items>
            <x:DropDownList ID="ddlSheng" Label="省份" ShowRedStar="true" CompareType="String"
                CompareValue="-1" CompareOperator="NotEqual" CompareMessage="请选择省份！" runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged">
            </x:DropDownList>
            <x:DropDownList ID="ddlShi" Label="地区市" ShowRedStar="true" CompareType="String"
                CompareValue="-1" CompareOperator="NotEqual" CompareMessage="请选择地区市！" runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="ddlShi_SelectedIndexChanged">
            </x:DropDownList>
            <x:DropDownList ID="ddlXian" ShowRedStar="true" CompareType="String" CompareValue="-1"
                CompareOperator="NotEqual" CompareMessage="请选择县区市！" Label="县区市" runat="server">
            </x:DropDownList>
            <x:Button ID="btnSubmit" runat="server" Text="获取选中的省市县" ValidateForms="SimpleForm1"
                ValidateTarget="Top" OnClick="btnSubmit_Click">
            </x:Button>
            <x:Label ID="labResult" runat="server" ShowLabel="false" CssStyle="font-weight:bold;">
            </x:Label>
        </Items>
    </x:SimpleForm>
    <br />
    <br />
    </form>
</body>
</html>
