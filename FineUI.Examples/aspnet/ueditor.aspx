<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ueditor.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.ueditor" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../ueditor/themes/default/ueditor.css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:ContentPanel ID="ContentPanel1" runat="server" BodyPadding="5px" Width="850px"
        EnableBackgroundColor="true" ShowBorder="true" ShowHeader="true" Title="内容面板">
        <textarea name="UEditor1" id="UEditor1">
            &lt;p&gt;This is some &lt;strong&gt;sample text&lt;/strong&gt;. You are using &lt;a href="http://ueditor.baidu.com/"&gt;UEditor&lt;/a&gt;.&lt;/p&gt;
       </textarea>
    </x:ContentPanel>
    <br />
    <x:Button ID="Button2" runat="server" CssClass="inline" Text="设置 CKEditor 的值" OnClick="Button2_Click">
    </x:Button>
    <x:Button ID="Button1" runat="server" Text="获取 CKEditor 的值" OnClick="Button1_Click">
    </x:Button>
    </form>
    <script type="text/javascript">
        window.UEDITOR_HOME_URL = '<%= ResolveUrl("~/ueditor/") %>';
    </script>
    <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="../ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript">
        var editor;
        function onReady() {
            editor = new UE.ui.Editor({
                initialFrameWidth: '100%',
                initialFrameHeight: 350,
                minFrameHeight: 350,
                autoFloatEnabled: false,
                focus: true
            });
            editor.render("UEditor1");
        }


        // 提交数据之前同步到表单隐藏字段
        X.util.beforeAjaxPostBackScript = function () {
            editor.sync();
        };

        // 更新编辑器内容
        function updateUEditor(content) {
            window.setTimeout(function () {
                editor.setContent(content);
            }, 100);
        }
    </script>
</body>
</html>
