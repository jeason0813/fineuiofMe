<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_iframe_disabled.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_iframe_disabled" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:TabStrip ID="TabStrip1" Width="750px" Height="450px" ShowBorder="true" ActiveTabIndex="0"
        runat="server" EnableTitleBackgroundColor="False">
        <Tabs>
            <x:Tab ID="Tab1" BodyPadding="5px" Title="标签一" runat="server" EnableIFrame="true" IFrameUrl="./tabstrip_iframe_disabled_tab1.aspx">
            </x:Tab>
            <x:Tab ID="Tab2" EnableIFrame="true" BodyPadding="5px" Enabled="false" IFrameUrl="../window/group_panel.aspx"
                Title="标签二" runat="server">
            </x:Tab>
            <x:Tab ID="Tab3" EnableIFrame="true" BodyPadding="5px" Enabled="false" IFrameUrl="../window/panel.aspx"
                Title="标签三" runat="server">
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    </form>
</body>
</html>
