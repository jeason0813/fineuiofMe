<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menucheckbox.aspx.cs" Inherits="FineUI.Examples.toolbar.menucheckbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ShowBorder="true" BodyPadding="5px" Height="300px" Width="450px" Title="面板"
        runat="server">
        <Toolbars>
            <x:Toolbar runat="server">
                <Items>
                    <x:Button EnablePostBack="false" ID="btnLangMenu" Text="系统语言" runat="server">
                        <Menu runat="server">
                            <x:MenuCheckBox Text="English" ID="MenuLangEnglish" GroupName="MenuLang" AutoPostBack="true"
                                OnCheckedChanged="MenuLang_CheckedChanged" Checked="true" runat="server">
                            </x:MenuCheckBox>
                            <x:MenuCheckBox Text="简体中文" ID="MenuLangZHCN" GroupName="MenuLang" AutoPostBack="true"
                                OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                            </x:MenuCheckBox>
                            <x:MenuCheckBox Text="繁體中文" ID="MenuLangZHTW" GroupName="MenuLang" AutoPostBack="true"
                                OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                            </x:MenuCheckBox>
                        </Menu>
                    </x:Button>
                    <x:Button EnablePostBack="false" ID="btnSiteMenu" Text="喜欢的站点" runat="server">
                        <Menu runat="server">
                            <x:MenuCheckBox Text="baidu.com" ID="MenuSiteBaidu" AutoPostBack="true" OnCheckedChanged="MenuSite_CheckedChanged"
                                Checked="true" runat="server">
                            </x:MenuCheckBox>
                            <x:MenuCheckBox Text="google.com" ID="MenuSiteGoogle" Checked="true" AutoPostBack="true"
                                OnCheckedChanged="MenuSite_CheckedChanged" runat="server">
                            </x:MenuCheckBox>
                            <x:MenuCheckBox Text="microsoft.com" ID="MenuSiteMicrosoft" AutoPostBack="true" OnCheckedChanged="MenuSite_CheckedChanged"
                                runat="server">
                            </x:MenuCheckBox>
                        </Menu>
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:Label ID="labLangResult" runat="server">
            </x:Label>
            <x:Label ID="labSiteResult" runat="server">
            </x:Label>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
