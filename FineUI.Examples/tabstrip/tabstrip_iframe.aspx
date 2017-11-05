<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_iframe.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_iframe" %>

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
            <x:Tab ID="Tab1" BodyPadding="5px" Title="标签一" runat="server">
                <Items>
                    <x:Label ID="Label1" Text="文本" runat="server">
                    </x:Label>
                    <x:ContentPanel ID="ContentPanel1" BodyPadding="5px" ShowBorder="true" ShowHeader="true"
                        Title="内容面板" runat="server">
                        这是内容面板中的内容。
                    </x:ContentPanel>
                </Items>
            </x:Tab>
            <x:Tab ID="Tab2" EnableIFrame="true" BodyPadding="5px" IFrameUrl="../window/group_panel.aspx"
                Title="标签二 - IFrame - 延迟加载" runat="server">
            </x:Tab>
            <x:Tab ID="Tab3" EnableIFrame="true" BodyPadding="5px" IFrameUrl="../window/panel.aspx"
                Title="标签三 - IFrame - 延迟加载" runat="server">
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    </form>
</body>
</html>
