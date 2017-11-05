<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="FineUI.Examples.usercontrol.userinfo" %>

<%@ Register Src="UserInfoControl.ascx" TagName="UserInfoControl" TagPrefix="uc1" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server"></x:PageManager>
    <x:ContentPanel runat="server" ID="Panel1" EnableBackgroundColor="true" Width="600px"
        Height="150px" Title="页面/面板一（ContentPanel->UserInfoControl）">
        <uc1:UserInfoControl ID="UserInfoControl1" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
            runat="server" />
    </x:ContentPanel>
    <br />
    <x:Panel runat="server" ID="Panel2" EnableBackgroundColor="true" Width="600px" Height="150px"
        Title="页面/面板二（Panel->UserControlConnector->UserInfoControl）">
        <Items>
            <x:UserControlConnector runat="server">
                <uc1:UserInfoControl ID="UserInfoControl2" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                    runat="server" />
            </x:UserControlConnector>
        </Items>
    </x:Panel>
    <br />
    <x:Panel runat="server" ID="Panel3" EnableBackgroundColor="true" Width="600px" Height="150px"
        Layout="Fit" Title="页面/面板三（Layout=Fit, Panel->UserControlConnector->UserInfoControl）">
        <Items>
            <x:UserControlConnector runat="server">
                <uc1:UserInfoControl ID="UserInfoControl3" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                    runat="server" />
            </x:UserControlConnector>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
