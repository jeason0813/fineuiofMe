﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passvalue_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.passvalue_iframe" %>

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
            <x:TextBox Label="你所在的省份" ID="TextBox1" runat="server">
            </x:TextBox>
            <x:Button ID="Button1" EnablePostBack="false" runat="server" Text="从列表中选择">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <x:Window ID="Window1" Title="编辑" Popup="false" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" OnClose="Window1_Close"
        IsModal="True" Width="750px" Height="450px">
    </x:Window>
    <x:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </x:Label>
    <br />
    </form>
</body>
</html>
