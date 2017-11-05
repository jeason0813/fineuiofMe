<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree.aspx.cs" Inherits="FineUI.Examples.tree.tree" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="树控件（内联）" runat="server">
        <Nodes>
            <x:TreeNode Text="中国" Expanded="true">
                <x:TreeNode Text="河南省" Expanded="true">
                    <x:TreeNode Text="驻马店市" NodeID="zhumadian">
                        <x:TreeNode Text="遂平县" Leaf="false" NodeID="suiping">
                            <x:TreeNode Text="槐树乡" Leaf="false" NodeID="huaishu">
                                <x:TreeNode Text="陈庄村" NodeID="chenzhuang">
                                </x:TreeNode>
                            </x:TreeNode>
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="漯河市" NodeID="luohe" />
                </x:TreeNode>
                <x:TreeNode Text="安徽省" Expanded="true" NodeID="anhui">
                    <x:TreeNode Text="合肥市" Expanded="true" NodeID="hefei">
                        <x:TreeNode Text="金色池塘小区" NodeID="golden">
                        </x:TreeNode>
                        <x:TreeNode Text="中国科学技术大学" NodeID="ustc">
                        </x:TreeNode>
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    </form>
</body>
</html>
