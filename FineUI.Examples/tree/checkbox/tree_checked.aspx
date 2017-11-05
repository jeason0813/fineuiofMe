<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_checked.aspx.cs" Inherits="FineUI.Examples.tree.checkbox.tree_checked" %>

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
            <x:TreeNode Text="中国" EnableCheckBox="true" Expanded="true">
                <x:TreeNode Text="河南省" EnableCheckBox="true" Expanded="true">
                    <x:TreeNode Text="驻马店市" EnableCheckBox="true" NodeID="zhumadian">
                        <x:TreeNode Text="遂平县" EnableCheckBox="true" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="西平县" EnableCheckBox="true" NodeID="Xiping">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="漯河市" EnableCheckBox="true" NodeID="luohe" />
                </x:TreeNode>
                <x:TreeNode EnableCheckBox="true" Text="安徽省" Expanded="true" NodeID="Anhui">
                    <x:TreeNode EnableCheckBox="true" Text="合肥市" NodeID="Hefei">
                    </x:TreeNode>
                    <x:TreeNode EnableCheckBox="true" Text="黄山市" NodeID="Huangshan">
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <br />
    <x:Button runat="server" ID="btnGetCheckedValues" Text="获取选中的项" OnClick="btnGetCheckedValues_Click">
    </x:Button>
    <br />
    <x:Label runat="server" ID="labResult">
    </x:Label>
    </form>
</body>
</html>
