<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_select.aspx.cs" Inherits="FineUI.Examples.tree.select.tree_select" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="树控件" runat="server">
        <Nodes>
            <x:TreeNode Text="中国" Expanded="true">
                <x:TreeNode Text="河南省" Expanded="true">
                    <x:TreeNode Text="驻马店市" Expanded="true" NodeID="Zhumadian">
                        <x:TreeNode Text="遂平县" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="西平县" NodeID="Xiping">
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
    <x:Button ID="btnGetSelectedNode" OnClick="btnGetSelectedNode_Click" CssClass="inline"
        runat="server" Text="获取选中的节点">
    </x:Button>
    <x:Button ID="btnSelectHefei" OnClick="btnSelectHefei_Click" runat="server" Text="选中“合肥市”">
    </x:Button>
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <br />
    </form>
</body>
</html>
