<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="keydown.aspx.cs" Inherits="FineUI.Examples.other.keydown" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" runat="server" Width="600px" BodyPadding="5px" EnableBackgroundColor="true"
        Title="简单表单">
        <Items>
            <x:TextBox ID="TextBox1" runat="server" ShowLabel="false" EmptyText="输入一些文字，下面的文本框会随之改变">
            </x:TextBox>
            <x:TextBox ID="TextBox2" runat="server" ShowLabel="false">
            </x:TextBox>
        </Items>
    </x:SimpleForm>
    </form>
    <script type="text/javascript">

        function onReady() {
            var textbox1 = X('<%= TextBox1.ClientID %>');
            var textbox2 = X('<%= TextBox2.ClientID %>');

            
            function updateTextbox2() {
                window.setTimeout(function () {
                    textbox2.setValue(textbox1.getValue());
                }, 100);
            }

            // 注：keypress在输入中文时无效，如果想做到真正的同步，就要用到定时器了。
            textbox1.el.on('keypress', function (e) {
                updateTextbox2();
            });

            textbox1.on('change', function (e) {
                updateTextbox2();
            });
        }
    
    </script>
</body>
</html>
