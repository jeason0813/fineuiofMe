<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="start.aspx.cs"
    Inherits="DotNetOA.Web.task.start" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form ID="Form2" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        Title="发起新任务" LabelWidth="100px">
        <Rows>
            <x:FormRow ID="FormRow1" runat="server">
                <Items>
                    <x:CheckBoxList ID="CheckBoxList1" runat="server" Label="执行人" Required="true" ColumnNumber="6">
                    </x:CheckBoxList>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <x:Tree runat="server" EnableArrows="true" OnNodeCommand="Tree1_NodeCommand" ShowBorder="false"
        ShowHeader="false" AutoScroll="true" ID="tree2">
        <Nodes>
            <x:TreeNode Text="添加企业" CommandArgument="info.aspx" IconUrl="~/images/16/1.png" EnablePostBack="true">
            </x:TreeNode>
            <x:TreeNode Text="企业查询" CommandArgument="info.aspx" IconUrl="~/images/16/1.png" EnablePostBack="true">
            </x:TreeNode>
            <x:TreeNode Text="企业业务信息查询" CommandArgument="info.aspx" IconUrl="~/images/16/1.png"
                EnablePostBack="true">
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <x:Accordion ID="Accordion1" runat="server" ShowBorder="false" ShowHeader="false"
        ShowCollapseTool="true">
        <Panes>
            <x:AccordionPane ID="AccordionPane1" runat="server" Title="企业业务" IconUrl="~/images/16/1.png"
                BodyPadding="2px 5px" Layout="Fit" ShowBorder="false">
                <Items>
                    <x:Tree runat="server" EnableArrows="true" OnNodeCommand="Tree1_NodeCommand" ShowBorder="false"
                        ShowHeader="false" AutoScroll="true" ID="tree1">
                        <Nodes>
                            <x:TreeNode Text="添加企业" CommandArgument="info.aspx" IconUrl="~/images/16/1.png" EnablePostBack="true">
                            </x:TreeNode>
                            <x:TreeNode Text="企业查询" CommandArgument="info.aspx" IconUrl="~/images/16/1.png" EnablePostBack="true">
                            </x:TreeNode>
                            <x:TreeNode Text="企业业务信息查询" CommandArgument="info.aspx" IconUrl="~/images/16/1.png"
                                EnablePostBack="true">
                            </x:TreeNode>
                        </Nodes>
                    </x:Tree>
                </Items>
            </x:AccordionPane>
        </Panes>
    </x:Accordion>
    <x:Button ID="Button1" runat="server" OnClick="btn_Submit_Click">
    </x:Button>
    </form>
</body>
</html>
