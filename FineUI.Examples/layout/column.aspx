<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="column.aspx.cs" Inherits="FineUI.Examples.layout.column" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .columnpanel
        {
            margin-right: 5px;
        }
        .rowpanel
        {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel2" runat="server" Height="250px" Width="750px" ShowBorder="True"
        BodyPadding="5px" Layout="Column" ShowHeader="True" Title="面板（Height=250px Width=750px Layout=Column）">
        <Items>
            <x:Panel ID="Panel1" Width="200px" Height="150px" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label runat="server" Text="Width=200px Height=150px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel4" ColumnWidth="60%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true" Layout="Fit">
                <Items>
                    <x:Label ID="Label1" runat="server" Text="ColumnWidth=60%<br />长长的文本1<br />长长的文本2<br />长长的文本3<br />长长的文本4"
                        EncodeText="false">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel3" ColumnWidth="40%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label2" runat="server" Text="ColumnWidth=40%">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <x:Panel ID="Panel5" runat="server" Height="250px" Width="750px" ShowBorder="True"
        BodyPadding="5px" Layout="Column" ShowHeader="True" Title="面板（Height=250px Width=750px Layout=Column）">
        <Items>
            <x:Panel ID="Panel6" Width="200px" Height="150px" CssClass="columnpanel" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label3" runat="server" Text="Width=200px Height=150px">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel7" ColumnWidth="60%" CssClass="columnpanel" EnableBackgroundColor="true"
                runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="true" Layout="Fit">
                <Items>
                    <x:Label ID="Label4" runat="server" Text="ColumnWidth=60%<br />长长的文本1<br />长长的文本2<br />长长的文本3<br />长长的文本4"
                        EncodeText="false">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel8" ColumnWidth="40%" EnableBackgroundColor="true" runat="server"
                BodyPadding="5px" ShowBorder="true" ShowHeader="true">
                <Items>
                    <x:Label ID="Label5" runat="server" Text="ColumnWidth=40%">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <x:Panel ID="Panel9" Height="350px" Width="750px" Layout="Column" BodyPadding="5px"
        ShowBorder="true" ShowHeader="true" EnableBackgroundColor="true" runat="server"
        Title="面板（Height=350px Width=750px Layout=Column BodyPadding=5px）">
        <Items>
            <x:Panel ID="Panel13" ColumnWidth="50%" CssClass="columnpanel" ShowBorder="false"
                EnableBackgroundColor="true" ShowHeader="false" runat="server">
                <Items>
                    <x:Panel ID="Panel14" Height="150px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                        ShowBorder="true" ShowHeader="true">
                        <Items>
                            <x:Label ID="Label8" runat="server" Text="Height=100px CssClass=rowpanel">
                            </x:Label>
                        </Items>
                    </x:Panel>
                    <x:Panel ID="Panel15" Height="100px" runat="server" BodyPadding="5px" ShowBorder="true"
                        ShowHeader="true">
                        <Items>
                            <x:Label ID="Label9" runat="server" Text="Height=100px">
                            </x:Label>
                        </Items>
                    </x:Panel>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel16" ColumnWidth="50%" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" runat="server">
                <Items>
                    <x:Panel ID="Panel17" Height="100px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                        ShowBorder="true" ShowHeader="true">
                        <Items>
                            <x:Label ID="Label10" runat="server" Text="Height=100px CssClass=rowpanel">
                            </x:Label>
                        </Items>
                    </x:Panel>
                    <x:Panel ID="Panel18" Height="150px" runat="server" BodyPadding="5px" ShowBorder="true"
                        ShowHeader="true">
                        <Items>
                            <x:Label ID="Label11" runat="server" Text="Height=100px">
                            </x:Label>
                        </Items>
                    </x:Panel>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <br />
    使用HBox布局实现与上例相同的界面：
    <br />
    ===========================================================================
    <br />
    <x:Panel ID="Panel10" Height="350px" Width="750px" Layout="HBox" BoxConfigAlign="Stretch"
        BoxConfigPosition="Start" BoxConfigPadding="5" BoxConfigChildMargin="0 5 0 0"
        ShowBorder="true" ShowHeader="true" EnableBackgroundColor="true" runat="server"
        Title="面板（Layout=HBox BoxConfigAlign=Stretch BoxConfigPosition=Start BoxConfigPadding=5 BoxConfigChildMargin=0 5 0 0）">
        <Items>
            <x:Panel ID="Panel11" BoxFlex="1" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" runat="server">
                <Items>
                    <x:Panel ID="Panel12" Height="150px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                        ShowBorder="true" ShowHeader="true">
                        <Items>
                            <x:Label ID="Label6" runat="server" Text="Height=100px CssClass=rowpanel">
                            </x:Label>
                        </Items>
                    </x:Panel>
                    <x:Panel ID="Panel19" Height="100px" runat="server" BodyPadding="5px" ShowBorder="true"
                        ShowHeader="true">
                        <Items>
                            <x:Label ID="Label7" runat="server" Text="Height=100px">
                            </x:Label>
                        </Items>
                    </x:Panel>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel20" BoxFlex="1" BoxMargin="0" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" runat="server">
                <Items>
                    <x:Panel ID="Panel21" Height="100px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                        ShowBorder="true" ShowHeader="true">
                        <Items>
                            <x:Label ID="Label12" runat="server" Text="Height=100px CssClass=rowpanel">
                            </x:Label>
                        </Items>
                    </x:Panel>
                    <x:Panel ID="Panel22" Height="150px" runat="server" BodyPadding="5px" ShowBorder="true"
                        ShowHeader="true">
                        <Items>
                            <x:Label ID="Label13" runat="server" Text="Height=100px">
                            </x:Label>
                        </Items>
                    </x:Panel>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
