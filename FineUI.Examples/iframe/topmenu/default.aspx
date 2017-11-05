<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="default.aspx.cs" Inherits="FineUI.Examples.iframe.topmenu._default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>顶部菜单框架（一）</title>
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
                                    <li class="selected menu-mail">
                                        <asp:LinkButton ID="lbtnMail" runat="server" OnClick="lbtnMail_Click">
                                            <span>邮件收发</span></asp:LinkButton>
                                    </li>
                                    <li class="menu-sms">
                                        <asp:LinkButton ID="lbtnSMS" runat="server" OnClick="lbtnSMS_Click">
                                            <span>短信收发</span></asp:LinkButton>
                                    </li>
                                    <li class="menu-sys">
                                        <asp:LinkButton ID="lbtnSYS" runat="server" OnClick="lbtnSYS_Click">
                                            <span>系统管理</span></asp:LinkButton>
                                    </li>
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
                EnableCollapse="true" Layout="Fit" Position="Left" runat="server">
                <Items>
                    <x:Tree runat="server" ShowBorder="false" ShowHeader="false" EnableArrows="true"
                        ID="leftTree">
                    </x:Tree>
                </Items>
            </x:Region>
            <x:Region ID="mainRegion" ShowHeader="false" Margins="0 0 0 0" Position="Center"
                EnableIFrame="true" IFrameName="mainframe" IFrameUrl="about:blank;" runat="server">
            </x:Region>
        </Regions>
    </x:RegionPanel>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="./data/menuMail.xml">
    </asp:XmlDataSource>
    </form>
    <script>
        var leftTreeID = '<%= leftTree.ClientID %>';

        function selectMenu(menuClassName) {
            // 选中当前菜单
            Ext.select('.menu ul li').removeClass('selected');
            Ext.select('.menu ul li.' + menuClassName).addClass('selected');

            // 展开树的第一个节点，并选中第一个节点下的第一个子节点（在右侧IFrame中打开）
            var tree = X(leftTreeID);
            var treeFirstChild = tree.getRootNode().firstChild;
            // 展开第一个节点（如果想要展开全部节点，调用 tree.expandAll();）
            treeFirstChild.expand();


            // 选中第一个链接节点，并在右侧IFrame中打开此链接
            var treeFirstLink = treeFirstChild.firstChild;
            treeFirstLink.select();
            window.frames['mainframe'].location.href = treeFirstLink.attributes['href'];

        }

        function onReady() {
            selectMenu('menu-mail');
        }
    </script>
</body>
</html>
