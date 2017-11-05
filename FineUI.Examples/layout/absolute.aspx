<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="absolute.aspx.cs" Inherits="FineUI.Examples.layout.absolute" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel2" runat="server" Height="450px" Width="750px" ShowBorder="True"
        Layout="Absolute" ShowHeader="True" EnableBackgroundColor="false" Title="面板（Height=450px Width=750px Layout=Absolute）">
        <Items>
            <x:Panel ID="Panel1" Width="300px" Title="Panel1" Height="300px" AbsoluteX="100px"
                BodyPadding="5px" AbsoluteY="50px" EnableBackgroundColor="true" runat="server"
                ShowBorder="True" ShowHeader="true">
                <Items>
                    <x:Label ID="Label3" EncodeText="false" Text="Width=300px <br/>Height=300px <br/>AbsoluteX=100px <br/>AbsoluteY=50px"
                        runat="server">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel3" Title="Panel2" Width="150px" Height="150px" AbsoluteX="450px"
                BodyPadding="5px" AbsoluteY="150px" EnableBackgroundColor="true" runat="server"
                ShowBorder="True" ShowHeader="true">
                <Items>
                    <x:Label ID="Label1" EncodeText="false" Text="Width=150px <br/>Height=150px <br/>AbsoluteX=450px <br/>AbsoluteY=150px"
                        runat="server">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
