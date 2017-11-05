<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="default.aspx.cs" Inherits="FineUI.Examples.iframe.topmenu2._default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>顶部菜单框架（二）</title>
    <link type="text/css" rel="stylesheet" href="./res/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server"></x:PageManager>
    <x:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server" AutoScroll="True">
        <Regions>
            <x:Region ID="Region1" Margins="0 0 0 0" ShowBorder="false" Height="102px" ShowHeader="false"
                Position="Top" Layout="Fit" runat="server">
                <Items>
                    <x:ContentPanel ShowBorder="false" CssClass="jumbotron" ShowHeader="false" runat="server">
                        <div class="wrap">
                            <div class="logos">
                                XXX 管理系统
                            </div>
                            <div class="menu">
                                <ul>
                                    <li class="selected menu-mail"><a href="javascript:;"><span>邮件收发</span></a> </li>
                                    <li class="menu-sms"><a href="javascript:;"><span>短信收发</span></a> </li>
                                    <li class="menu-sys"><a href="javascript:;"><span>系统管理</span></a> </li>
                                </ul>
                            </div>
                            <div class="member">
                                领先的 XXX 管理系统欢迎您！
                            </div>
                            <div class="exit">
                                <a href="javascript:;">退出管理</a>
                            </div>
                        </div>
                    </x:ContentPanel>
                </Items>
            </x:Region>
            <x:Region ID="Region2" Split="true" EnableSplitTip="true" CollapseMode="Mini" Width="200px"
                Margins="0 0 0 0" ShowHeader="false" Title="示例菜单" EnableLargeHeader="false" Icon="Outline"
                EnableCollapse="true" EnableIFrame="true" IFrameName="leftframe" IFrameUrl="./leftmenu.aspx"
                Position="Left" runat="server">
            </x:Region>
            <x:Region ID="mainRegion" ShowHeader="false" Margins="0 0 0 0" Position="Center"
                EnableIFrame="true" IFrameName="mainframe" IFrameUrl="about:blank;" runat="server">
            </x:Region>
        </Regions>
    </x:RegionPanel>
    </form>
    <script>

        function onReady() {
            var menuLis = Ext.select('.menu ul li');
            menuLis.on('click', function (evt, el) {
                var classNames = /menu\-(\w+)/.exec(this.className);
                if (classNames.length == 2) {
                    var menuType = classNames[1];

                    menuLis.removeClass('selected');
                    Ext.get(this).addClass('selected');

                    window.frames['leftframe'].location.href = './leftmenu.aspx?menu=' + encodeURIComponent(menuType);
                }
            });
        }
    </script>
</body>
</html>
