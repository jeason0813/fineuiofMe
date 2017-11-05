<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_icon.aspx.cs" Inherits="FineUI.Examples.tree.tree_icon" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="树控件" runat="server">
        <Nodes>
            <x:TreeNode Text="中国" Expanded="true">
                <x:TreeNode Text="河南省" Expanded="true">
                    <x:TreeNode Text="驻马店市" Expanded="true" Icon="Anchor" NodeID="Zhumadian">
                        <x:TreeNode Text="遂平县" Icon="Anchor" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="西平县" Icon="Anchor" NodeID="Xiping">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="漯河市" NodeID="Luohe" />
                </x:TreeNode>
                <x:TreeNode Text="安徽省" Expanded="true" NodeID="Anhui">
                    <x:TreeNode Expanded="true" Text="合肥市" NodeID="Hefei">
                        <x:TreeNode Text="中国科学技术大学（链接）" NavigateUrl="http://www.ustc.edu.cn/" Target="_blank"
                            ToolTip="点击跳转到科大主页" NodeID="ustc">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="黄山市" NodeID="Huangshan">
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <br />
    <br />
    </form>
</body>
</html>
