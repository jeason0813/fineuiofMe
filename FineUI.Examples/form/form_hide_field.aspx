<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_hide_field.aspx.cs"
    Inherits="FineUI.Examples.form.form_hide_field" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .redcolor
        {
        }
    </style>
</head>
<body>
    <form id="_form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form Width="600px" LabelWidth="100px" EnableBackgroundColor="true" BodyPadding="5px"
        ID="Form2" runat="server" Title="表单">
        <Rows>
            <x:FormRow>
                <Items>
                    <x:Label ID="labTitle" Label="标题" HideMode="Display" Text="申请单" runat="server" />
                    <x:Label ID="labLiuShuiHao" Label="流水号" HideMode="Visibility" Text="123456789" runat="server" />
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Label ID="Label3" Label="电话" Text="0551-1234567" runat="server" />
                    <x:Label ID="Label16" runat="server" Label="申请人" Text="admin">
                    </x:Label>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Label ID="Label4" Label="编号" Text="200804170006" runat="server" />
                    <x:TextBox ID="TextBox2" Required="true" ShowRedStar="true" Label="电子邮箱" RegexPattern="EMAIL"
                        RegexMessage="请输入有效的邮箱地址！" runat="server">
                    </x:TextBox>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:DropDownList ID="DropDownList3" Label="审批人" Required="true" runat="server" ShowRedStar="True">
                        <x:ListItem Text="老大甲" Value="0"></x:ListItem>
                        <x:ListItem Text="老大乙" Value="1"></x:ListItem>
                        <x:ListItem Text="老大丙" Value="1"></x:ListItem>
                    </x:DropDownList>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:NumberBox ID="NumberBox1" Label="申请数量" MaxValue="1000" Required="true" runat="server"
                        ShowRedStar="True" />
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:TextArea ID="TextArea1" runat="server" Label="描述" ShowRedStar="True" Required="True">
                    </x:TextArea>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Panel ID="Panel2" runat="server" EnableBackgroundColor="true" ShowBorder="false"
                        ShowHeader="false">
                        <Items>
                            <x:Button ID="btnSubmitForm2" Text="验证表单并提交" CssClass="inline" runat="server" OnClick="btnSubmitForm2_Click"
                                ValidateForms="Form2">
                            </x:Button>
                        </Items>
                    </x:Panel>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <br />
    <x:Button ID="btnShowHideTitle" Text="显示隐藏标题" CssClass="inline" runat="server"
        OnClick="btnShowHideTitle_Click">
    </x:Button>
    <x:Button ID="btnShowHideLiuShuiHao" Text="显示隐藏流水号" runat="server"
        OnClick="btnShowHideLiuShuiHao_Click">
    </x:Button>
    <br />
    <br />
    注意：比较上述两个按钮的异同（控件的HideMode属性）。
    </form>
</body>
</html>
