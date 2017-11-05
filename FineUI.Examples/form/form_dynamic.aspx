<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_dynamic.aspx.cs" Inherits="FineUI.Examples.form.form_dynamic" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form Width="550px" BodyPadding="5px" ID="Form2" EnableBackgroundColor="true"
        Title="表单" LabelWidth="120px" runat="server">
        <Rows>
            <x:FormRow>
                <Items>
                    <x:Label ID="Label1" runat="server" ShowLabel="false" Text="这是一个标签">
                    </x:Label>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <br />
    注：用户名和性别两个控件是动态创建的。
    <br />
    <br />
    <x:Button ID="Button1" runat="server" ValidateForms="Form2" ValidateTarget="Top"
        Text="验证表单并提交" OnClick="Button1_Click">
    </x:Button>
    </form>
</body>
</html>
