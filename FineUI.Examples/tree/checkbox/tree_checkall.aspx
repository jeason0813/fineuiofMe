<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_checkall.aspx.cs"
    Inherits="FineUI.Examples.tree.checkbox.tree_checkall" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" OnNodeCheck="Tree1_NodeCheck" Width="500px" ShowHeader="true"
        Title="树控件" runat="server">
        <Nodes>
            <x:TreeNode Text="中国" EnableCheckBox="true" AutoPostBack="true" Expanded="true">
                <x:TreeNode AutoPostBack="true" Text="河南省" EnableCheckBox="true" Expanded="true">
                    <x:TreeNode Text="驻马店市" AutoPostBack="true" EnableCheckBox="true" NodeID="zhumadian">
                        <x:TreeNode Text="遂平县" AutoPostBack="true" EnableCheckBox="true" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="西平县" AutoPostBack="true" EnableCheckBox="true" NodeID="Xiping">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="漯河市" AutoPostBack="true" EnableCheckBox="true" NodeID="luohe" />
                </x:TreeNode>
                <x:TreeNode AutoPostBack="true" EnableCheckBox="true" Text="安徽省" Expanded="true"
                    NodeID="Anhui">
                    <x:TreeNode EnableCheckBox="true" AutoPostBack="true" Text="合肥市" NodeID="Hefei">
                    </x:TreeNode>
                    <x:TreeNode EnableCheckBox="true" AutoPostBack="true" Text="黄山市" NodeID="Huangshan">
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    </form>
</body>
</html>
