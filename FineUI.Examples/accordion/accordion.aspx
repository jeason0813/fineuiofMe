<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accordion.aspx.cs" Inherits="FineUI.Examples.accordion.accordion2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Accordion ID="Accordion1" Title="手风琴控件" runat="server" Width="300px" Height="450px"
        EnableFill="true" ShowBorder="True" ActiveIndex="1">
        <Panes>
            <x:AccordionPane ID="AccordionPane1" runat="server" Title="面板一" IconUrl="../images/16/1.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label1" Text="面板一中的文本" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
            <x:AccordionPane ID="AccordionPane2" runat="server" Title="面板二" IconUrl="../images/16/4.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label2" Text="面板二中的文本" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
            <x:AccordionPane ID="AccordionPane3" runat="server" Title="面板三" IconUrl="../images/16/7.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label3" Text="面板三中的文本" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
        </Panes>
    </x:Accordion>
    <br />
    <x:Button ID="Button1" Text="获取当前展开的面板" runat="server" OnClick="Button1_Click">
    </x:Button>
    </form>
</body>
</html>
