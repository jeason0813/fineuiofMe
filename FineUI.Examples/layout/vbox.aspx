<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vbox.aspx.cs" Inherits="FineUI.Examples.layout.vbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel2" runat="server" Height="400px" Width="800px" ShowBorder="True"
        Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start" BoxConfigPadding="5"
        BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=Stretch BoxConfigPosition=Start BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
        <Items>
            <x:Panel ID="Panel1" Title="面板1" EnableBackgroundColor="true" BoxFlex="1" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label1" runat="server" Text="BoxFlex=1">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel3" Title="面板2" Height="100px" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label2" runat="server" Text="Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel4" Title="面板3" EnableBackgroundColor="true" BoxFlex="2" BoxMargin="0"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label3" runat="server" Text="BoxFlex=2 BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    <x:Panel ID="Panel5" runat="server" Height="400px" Width="800px" ShowBorder="True"
        Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="End" BoxConfigPadding="5"
        BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=Stretch BoxConfigPosition=End BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
        <Items>
            <x:Panel ID="Panel6" Title="面板1" EnableBackgroundColor="true" Height="100px" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label4" runat="server" Text="Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel7" Title="面板2" Height="100px" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label5" runat="server" Text="Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel8" Title="面板3" EnableBackgroundColor="true" Height="100px" BoxMargin="0"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label6" runat="server" Text="Height=100px BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    <x:Panel ID="Panel9" runat="server" Height="400px" Width="800px" ShowBorder="True"
        Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Center" BoxConfigPadding="5"
        BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=Stretch BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
        <Items>
            <x:Panel ID="Panel10" Title="面板1" EnableBackgroundColor="true" Height="100px" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label7" runat="server" Text="Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel11" Title="面板2" Height="100px" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label8" runat="server" Text="Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel12" Title="面板3" EnableBackgroundColor="true" Height="100px" BoxMargin="0"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label9" runat="server" Text="Height=100px BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    <x:Panel ID="Panel13" runat="server" Height="400px" Width="800px" ShowBorder="True"
        Layout="VBox" BoxConfigAlign="Start" BoxConfigPosition="Center" BoxConfigPadding="5"
        BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=Start BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
        <Items>
            <x:Panel ID="Panel14" Title="面板1" EnableBackgroundColor="true" Width="200px" Height="100px"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label10" runat="server" Text="Width=200px Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel15" Title="面板2" Width="400px" Height="100px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label11" runat="server" Text="Width=400px Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel16" Title="面板3" EnableBackgroundColor="true" Width="600px" BoxMargin="0"
                Height="100px" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label12" runat="server" Text="Width=600px Height=100px BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    <x:Panel ID="Panel17" runat="server" Height="400px" Width="800px" ShowBorder="True"
        Layout="VBox" BoxConfigAlign="StretchMax" BoxConfigPosition="Center" BoxConfigPadding="5"
        BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=StretchMax BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
        <Items>
            <x:Panel ID="Panel18" Title="面板1" EnableBackgroundColor="true" Width="200px" Height="100px"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label13" runat="server" Text="Width=200px Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel19" Title="面板2" Width="400px" Height="100px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label14" runat="server" Text="Width=400px Height=100px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel20" Title="面板3" EnableBackgroundColor="true" Width="600px" BoxMargin="0"
                Height="100px" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label15" runat="server" Text="Width=600px Height=100px BoxMargin=0">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
