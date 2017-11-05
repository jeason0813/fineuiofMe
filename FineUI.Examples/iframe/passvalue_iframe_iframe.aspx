<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passvalue_iframe_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.passvalue_iframe_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server"></x:PageManager>
    <x:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
        BodyPadding="5px" EnableBackgroundColor="true">
        <Items>
            <x:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false" Title="SimpleForm"
                EnableBackgroundColor="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                <Items>
                    <x:DropDownList ID="ddlSheng" Label="请选择省份" ShowRedStar="true" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged">
                    </x:DropDownList>
                </Items>
            </x:SimpleForm>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
