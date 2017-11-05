<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FineUI.Examples.basic.login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    用户名：admin
    <br />
    密码：admin
    <br />
    注意：在任意文本输入框内按回车键，都会触发按钮（Type="Submit"）的表单提交事件。
    <x:Window ID="Window1" runat="server" Title="登录表单" IsModal="false" EnableClose="false"
        WindowPosition="GoldenSection" Width="350px" FooterBarAlign="Right">
        <Items>
            <x:SimpleForm ID="SimpleForm1" runat="server" ShowBorder="false" BodyPadding="10px"
                LabelWidth="60px" EnableBackgroundColor="true" ShowHeader="false">
                <Items>
                    <x:TextBox ID="tbxUserName" Label="用户名" Required="true" runat="server">
                    </x:TextBox>
                    <x:TextBox ID="tbxPassword" Label="密码" TextMode="Password" Required="true" runat="server">
                    </x:TextBox>
                </Items>
            </x:SimpleForm>
        </Items>
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server" Position="Footer">
                <Items>
                    <x:Button ID="btnLogin" Text="登录" Type="Submit" ValidateForms="SimpleForm1" ValidateTarget="Top"
                        runat="server" OnClick="btnLogin_Click">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Window>
    </form>
</body>
</html>
