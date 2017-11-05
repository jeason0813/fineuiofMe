<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FineUI.Examples._default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>FineUI 在线示例 - 基于 ExtJS 的开源 ASP.NET 控件库</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <meta name="Title" content="基于 ExtJS 的开源 ASP.NET 控件库(ExtJS based open source ASP.NET Controls)" />
    <meta name="Description" content="FineUI 的使命是创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序" />
    <meta name="Keywords" content="开源,ASP.NET,控件库,ExtJS,AJAX,Web2.0" />
    <link href="css/default.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server"></x:PageManager>
    <x:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
        <Regions>
            <x:Region ID="Region1" Margins="0 0 0 0" ShowBorder="false" Height="50px" ShowHeader="false"
                Position="Top" Layout="Fit" runat="server">
                <Items>
                    <x:ContentPanel ShowBorder="false" CssClass="jumbotron" ShowHeader="false" ID="ContentPanel1"
                        runat="server">
                        <div class="title">
                            <a href="http://fineui.com/" title="FineUI首页" class="logo"><img src="./images/logo/logo2.gif" alt="FineUI Logo"/></a>
                            &nbsp;<a href="./default.aspx" style="color:#fff;">FineUI在线示例</a>
                        </div>
						<div class="version">
                            <a href="http://fineui.com/demo_en/" target="_blank" style="color:#fff;">English Version</a>
                        </div>
						<div class="version" style="top:28px;">
                            <a href="http://fineui.com/demo_v4/" target="_blank" style="color:#fff;font-size:16px;">FineUI v4.0 在线示例</a>
                        </div>
					</x:ContentPanel>
                </Items>
            </x:Region>
            <x:Region ID="Region2" Split="true" EnableSplitTip="true" CollapseMode="Mini" Width="200px"
                Margins="0 0 0 0" ShowHeader="false" Title="示例菜单" EnableLargeHeader="false" Icon="Outline"
                EnableCollapse="true" Layout="Fit" Position="Left" runat="server">
                <Toolbars>
                    <x:Toolbar ID="Toolbar1" Position="Top" runat="server">
                        <Items>
                            <x:ToolbarFill ID="ToolbarFill1" runat="server">
                            </x:ToolbarFill>
                            <x:Button ID="Button2" EnablePostBack="false" Icon="Cog" runat="server">
                                <Menu ID="Menu1" runat="server">
                                    <x:MenuButton ID="btnExpandAll" IconUrl="~/images/expand-all.gif" Text="展开菜单" EnablePostBack="false"
                                        runat="server">
                                    </x:MenuButton>
                                    <x:MenuButton ID="btnCollapseAll" IconUrl="~/images/collapse-all.gif" Text="折叠菜单"
                                        EnablePostBack="false" runat="server">
                                    </x:MenuButton>
                                    <x:MenuSeparator runat="server">
                                    </x:MenuSeparator>
                                    <x:MenuButton EnablePostBack="false" Text="菜单样式" ID="MenuStyle" runat="server">
                                        <Menu ID="Menu3" runat="server">
                                            <x:MenuCheckBox Text="树菜单" ID="MenuStyleTree" Checked="true" GroupName="MenuStyle"
                                                AutoPostBack="true" OnCheckedChanged="MenuStyle_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="手风琴+树菜单" ID="MenuStyleAccordion" GroupName="MenuStyle" AutoPostBack="true"
                                                OnCheckedChanged="MenuStyle_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                        </Menu>
                                    </x:MenuButton>
                                    <x:MenuButton EnablePostBack="false" Text="语言" ID="MenuLang" runat="server">
                                        <Menu runat="server">
                                            <x:MenuCheckBox Text="简体中文" ID="MenuLangZHCN" Checked="true" GroupName="MenuLang"
                                                AutoPostBack="true" OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="繁體中文" ID="MenuLangZHTW" GroupName="MenuLang" AutoPostBack="true"
                                                OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="English" ID="MenuLangEN" GroupName="MenuLang" AutoPostBack="true"
                                                OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                        </Menu>
                                    </x:MenuButton>
                                    <x:MenuButton ID="MenuTheme" EnablePostBack="false" Text="主题" runat="server">
                                        <Menu ID="Menu2" runat="server">
                                            <x:MenuCheckBox Text="Blue" ID="MenuThemeBlue" Checked="true" GroupName="MenuTheme"
                                                AutoPostBack="true" OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="Gray" ID="MenuThemeGray" GroupName="MenuTheme" AutoPostBack="true"
                                                OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="Access" ID="MenuThemeAccess" GroupName="MenuTheme" AutoPostBack="true"
                                                OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="Blueen（自定义）" ID="MenuThemeBlueen" GroupName="MenuTheme" AutoPostBack="true"
                                                OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="First（自定义）" ID="MenuThemeFirst" GroupName="MenuTheme" AutoPostBack="true"
                                                OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="Second（自定义）" ID="MenuThemeSecond" GroupName="MenuTheme" AutoPostBack="true"
                                                OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                            <x:MenuCheckBox Text="Fourth（自定义）" ID="MenuThemeFourth" GroupName="MenuTheme" AutoPostBack="true"
                                                OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                                            </x:MenuCheckBox>
                                        </Menu>
                                    </x:MenuButton>
                                </Menu>
                            </x:Button>
                        </Items>
                    </x:Toolbar>
                </Toolbars>
            </x:Region>
            <x:Region ID="mainRegion" ShowHeader="false" Layout="Fit" Margins="0 0 0 0" Position="Center"
                runat="server">
                <Items>
                    <x:TabStrip ID="mainTabStrip" EnableTabCloseMenu="true" ShowBorder="false" runat="server">
                        <Tabs>
                            <x:Tab Title="首页" Layout="Fit" Icon="House" runat="server">
                                <Toolbars>
                                    <x:Toolbar runat="server">
                                        <Items>
                                            <x:ToolbarFill ID="ToolbarFill2" runat="server">
                                            </x:ToolbarFill>
                                            <x:Button ID="btnSourceCode" Icon="PageWhiteCode" Text="源代码" EnablePostBack="false"
                                                runat="server">
                                            </x:Button>
                                            <%--<x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                                            </x:ToolbarSeparator>
                                            <x:Button ID="Button1" Icon="TabGo" Text="论坛" OnClientClick="window.open('http://bbs.fineui.com', '_blank');"
                                                EnablePostBack="false" runat="server">
                                            </x:Button>--%>
                                            <x:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                                            </x:ToolbarSeparator>
                                            <x:Button ID="btnGotoOpenSourceSite" Icon="TabGo" Text="下载示例" OnClientClick="window.open('http://fineui.codeplex.com/', '_blank');"
                                                EnablePostBack="false" runat="server">
                                            </x:Button>
                                            <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                                            </x:ToolbarSeparator>
                                            <x:Button ID="Button1" Icon="TabGo" Text="论坛交流" OnClientClick="window.open('http://fineui.com/bbs/', '_blank');"
                                                EnablePostBack="false" runat="server">
                                            </x:Button>
                                        </Items>
                                    </x:Toolbar>
                                </Toolbars>
                                <Items>
                                    <x:ContentPanel ShowBorder="false" BodyPadding="10px" ShowHeader="false" AutoScroll="true"
                                        CssClass="intro" runat="server">
                                        <h2>关于FineUI</h2>
                                            基于 ExtJS 的开源 ASP.NET 控件库。
                                        <br />
                                        <br />
                                        <h2>FineUI的使命</h2>
                                           创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序。
                                        <br />
                                        <br />
                                        <h2>支持的浏览器</h2>
                                            IE 8.0+、Chrome、Firefox、Opera、Safari
                                        <br />
                                        <br />
                                        <h2>授权协议</h2>
                                            Apache License v2.0
                                            <br />
                                            注：ExtJS 库在 <a target="_blank" href="http://www.sencha.com/license">GPL v3</a> 协议下发布。
                                            
                                        <br />
                                        <br />
                                        <h2>相关链接</h2>
                                            首页：<a target="_blank" style="font-weight:bold;" href="http://fineui.com/">http://fineui.com/</a>
                                        <br />
                                            论坛：<a target="_blank" href="http://fineui.com/bbs/">http://fineui.com/bbs/</a>
                                        <br />
                                            示例：<a target="_blank" href="http://fineui.com/demo/">http://fineui.com/demo/</a>
                                        <br />
                                            文档：<a target="_blank" href="http://fineui.com/doc/">http://fineui.com/doc/</a>
                                        <br />
                                            下载：<a target="_blank" href="http://fineui.codeplex.com/">http://fineui.codeplex.com/</a>
                                        <br />
                                        <br />
                                        <br />
                                        FineUI 不再内置 ExtJS 库，请手工添加 ExtJS 库：<a target="_blank" href="http://fineui.com/bbs/forum.php?mod=viewthread&tid=3218">http://fineui.com/bbs/forum.php?mod=viewthread&tid=3218</a>
                                        
                                    </x:ContentPanel>
                                </Items>
                            </x:Tab>
                        </Tabs>
                    </x:TabStrip>
                </Items>
            </x:Region>
        </Regions>
    </x:RegionPanel>
    <x:Window ID="windowSourceCode" Icon="PageWhiteCode" Title="源代码" Popup="false" EnableIFrame="true"
        runat="server" IsModal="true" Width="900px" Height="550px" EnableClose="true"
        EnableMaximize="true" EnableResize="true">
    </x:Window>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/common/menu.xml"></asp:XmlDataSource>
    </form>
    <img src="images/logo/logo3.png" alt="FineUI 图标" id="logo" />
    <script src="./js/default.js" type="text/javascript"></script>
</body>
</html>
