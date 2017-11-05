<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_ajax.aspx.cs" Inherits="FineUI.Examples.data.tree_ajax" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" EnableArrows="true" OnNodeExpand="Tree1_NodeExpand" Width="500px"
        ShowHeader="true" Title="延迟加载的树控件" AutoLeafIdentification="false" runat="server">
        <Nodes>
            <x:TreeNode Text="中国" Expanded="true">
                <x:TreeNode Text="河南省" Expanded="true">
                    <x:TreeNode Text="驻马店市（此节点延迟加载）" NodeID="zhumadian">
                    </x:TreeNode>
                    <x:TreeNode Text="漯河" NodeID="luohe" Leaf="true" />
                </x:TreeNode>
                <x:TreeNode Text="安徽省" Expanded="true" NodeID="anhui">
                    <x:TreeNode Text="合肥市" NodeID="hefei">
                        <x:TreeNode Text="金色池塘小区" NodeID="golden" Leaf="true">
                        </x:TreeNode>
                        <x:TreeNode Text="中国科学技术大学" NodeID="ustc" Leaf="true">
                        </x:TreeNode>
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <br />
    <br />
    <br />
    </form>
</body>
</html>
