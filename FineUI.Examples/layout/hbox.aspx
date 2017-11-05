<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hbox.aspx.cs" Inherits="FineUI.Examples.layout.hbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel2" runat="server" Height="250px" Width="800px" ShowBorder="True"
        Layout="HBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start" BoxConfigPadding="5"
        BoxConfigChildMargin="0 5 0 0" ShowHeader="True" Title="面板（Layout=HBox BoxConfigAlign=Stretch BoxConfigPosition=Start BoxConfigPadding=5 BoxConfigChildMargin=0 5 0 0）">
        <Items>
            <x:Panel ID="Panel1" Title="面板1" EnableBackgroundColor="true" BoxFlex="1" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label1" runat="server" Text="BoxFlex=1">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel3" Title="面板2" Width="150px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label2" runat="server" Text="Width=150px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel4" Title="面板3" EnableBackgroundColor="true" BoxFlex="2" runat="server"
                BodyPadding="5px" BoxMargin="0" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label3" runat="server" Text="BoxFlex=2 BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    <x:Panel ID="Panel5" runat="server" Height="250px" Width="800px" ShowBorder="True"
        Layout="HBox" BoxConfigAlign="Stretch" BoxConfigPosition="End" BoxConfigPadding="5px"
        BoxConfigChildMargin="0 5 0 0" ShowHeader="True" Title="面板（Layout=HBox BoxConfigAlign=Stretch BoxConfigPosition=End BoxConfigPadding=5 BoxConfigChildMargin=0 5 0 0）">
        <Items>
            <x:Panel ID="Panel6" Title="面板1" EnableBackgroundColor="true" Width="200px"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label4" runat="server" Text="Width=200px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel7" Title="面板2" Width="200px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label5" runat="server" Text="Width=200px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel8" Title="面板3" EnableBackgroundColor="true" Width="200px"
                BoxMargin="0" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label6" runat="server" Text="Width=200px BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    <x:Panel ID="Panel9" runat="server" Height="250px" Width="800px" ShowBorder="True"
        Layout="HBox" BoxConfigAlign="Stretch" BoxConfigPosition="Center" BoxConfigPadding="5px"
        BoxConfigChildMargin="0 5 0 0" ShowHeader="True" Title="面板（Layout=HBox BoxConfigAlign=Stretch BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 5 0 0）">
        <Items>
            <x:Panel ID="Panel10" Title="面板1" EnableBackgroundColor="true" Width="200px"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label7" runat="server" Text="Width=200px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel11" Title="面板2" Width="200px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label8" runat="server" Text="Width=200px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel12" Title="面板3" EnableBackgroundColor="true" Width="200px"
                BoxMargin="0" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label9" runat="server" Text="Width=200px BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    <x:Panel ID="Panel13" runat="server" Height="250px" Width="800px" ShowBorder="True"
        Layout="HBox" BoxConfigAlign="Center" BoxConfigPosition="Center" BoxConfigPadding="5px"
        BoxConfigChildMargin="0 5 0 0" ShowHeader="True" Title="面板（Layout=HBox BoxConfigAlign=Center BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 5 0 0）">
        <Items>
            <x:Panel ID="Panel14" Title="面板1" EnableBackgroundColor="true" Width="200px"
                Height="100px" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label10" runat="server" Text="Width=200px Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel15" Title="面板2" Width="200px" Height="150px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label11" runat="server" Text="Width=200px Height=150px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel16" Title="面板3" EnableBackgroundColor="true" Width="200px"
                BoxMargin="0" Height="200px" runat="server" BodyPadding="5px" ShowBorder="true"
                ShowHeader="true">
                <Items>
                    <x:Label ID="Label12" runat="server" Text="Width=200px Height=200px BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    <x:Panel ID="Panel17" runat="server" Height="250px" Width="800px" ShowBorder="True"
        Layout="HBox" BoxConfigAlign="StretchMax" BoxConfigPosition="Center" BoxConfigPadding="5px"
        BoxConfigChildMargin="0 5 0 0" ShowHeader="True" Title="面板（Layout=HBox BoxConfigAlign=StretchMax BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 5 0 0）">
        <Items>
            <x:Panel ID="Panel18" Title="面板1" EnableBackgroundColor="true" Width="200px"
                Height="100px" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label13" runat="server" Text="Width=200px Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel19" Title="面板2" Width="200px" Height="150px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label14" runat="server" Text="Width=200px Height=150px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel20" Title="面板3" EnableBackgroundColor="true" Width="200px"
                BoxMargin="0" Height="200px" runat="server" BodyPadding="5px" ShowBorder="true"
                ShowHeader="true">
                <Items>
                    <x:Label ID="Label15" runat="server" Text="Width=200px Height=200px BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
