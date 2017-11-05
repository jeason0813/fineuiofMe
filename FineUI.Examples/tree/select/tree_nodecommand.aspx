<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_nodecommand.aspx.cs"
    Inherits="FineUI.Examples.tree.select.tree_nodecommand" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" OnNodeCommand="Tree1_NodeCommand" ShowHeader="true"
        Title="树控件" runat="server">
        <Nodes>
            <x:TreeNode Text="中国" Expanded="true">
                <x:TreeNode Text="河南省" Expanded="true">
                    <x:TreeNode Text="驻马店市（点击回发）" EnablePostBack="true" Expanded="true" NodeID="Zhumadian">
                        <x:TreeNode Text="遂平县（点击回发）" EnablePostBack="true" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="西平县（点击回发）" EnablePostBack="true" NodeID="Xiping">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="漯河市" Enabled="true" NodeID="Luohe" />
                </x:TreeNode>
                <x:TreeNode Text="安徽省" Expanded="true" NodeID="Anhui">
                    <x:TreeNode Text="合肥市" NodeID="Hefei">
                    </x:TreeNode>
                    <x:TreeNode Text="黄山市" NodeID="Huangshan">
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <br />
    </form>
</body>
</html>
