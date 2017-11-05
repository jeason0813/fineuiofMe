<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo2.aspx.cs" Inherits="FineUI.Examples.usercontrol.userinfo2" %>

<%@ Register Src="UserInfoControl.ascx" TagName="UserInfoControl" TagPrefix="uc1" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server"></x:PageManager>
    <x:Panel runat="server" ID="Panel1" EnableBackgroundColor="true" Width="600px"
        Height="200px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
        BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板一（Layout=VBox, Panel->(UserControlConnector->UserInfoControl,Panel)）">
        <Items>
            <x:UserControlConnector ID="UserControlConnector1" runat="server">
                <uc1:UserInfoControl ID="UserInfoControl1" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                    runat="server" />
            </x:UserControlConnector>
            <x:Panel runat="server" ID="Panel3" BodyPadding="5px" BoxFlex="1" BoxMargin="0"
                Title="页面/面板二">
                <Items>
                    <x:Label runat="server" Text="胡斐今年22岁，住在驻马店。">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <br />
    <x:Panel runat="server" ID="Panel2" EnableBackgroundColor="true" Width="600px"
        Height="200px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
        BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板一">
        <Items>
            <x:UserControlConnector ID="UserControlConnector2" runat="server">
                <uc1:UserInfoControl ID="UserInfoControl2" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                    runat="server" />
            </x:UserControlConnector>
            <x:UserControlConnector ID="UserControlConnector3" runat="server">
                <uc1:UserInfoControl ID="UserInfoControl3" Properties="{BoxMargin:'0',BoxFlex:1}" UserName="胡斐" UserAge="22" UserCountry="驻马店"
                    runat="server" />
            </x:UserControlConnector>
        </Items>
    </x:Panel>
    <br />
    <x:Panel runat="server" ID="Panel4" EnableBackgroundColor="true" Width="600px"
        Height="200px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
        BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板二">
        <Items>
            <x:UserControlConnector ID="UserControlConnector4" runat="server">
                <uc1:UserInfoControl ID="UserInfoControl4" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                    runat="server" />
                <uc1:UserInfoControl ID="UserInfoControl5" UserName="胡斐" UserAge="22" UserCountry="驻马店"
                    runat="server" />
            </x:UserControlConnector>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
