<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="remote_with_cache.aspx.cs"
    Inherits="FineUI.Examples.autocomplete.remote_with_cache" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../jqueryui/css/ui-lightness/jquery-ui-1.9.2.custom.min.css" />
    <style>
        .ui-autocomplete-loading
        {
            background: white url('../images/ui-anim_basic_16x16.gif') right center no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" runat="server" LabelWidth="60px" Width="600px" BodyPadding="5px"
        EnableBackgroundColor="true" Title="简单表单">
        <Items>
            <x:TextBox ID="TextBox1" runat="server" Label="标题" EmptyText="输入字母 ja 或者 sc 试试，必须输入两个字符后才有自动提示">
            </x:TextBox>
        </Items>
    </x:SimpleForm>
    </form>
    <script src="../jqueryui/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="../jqueryui/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        function onReady() {
            var textbox1ID = '<%= TextBox1.ClientID %>';

            var cache = {};

            $('#' + textbox1ID).autocomplete({
                minLength: 2,
                source: function (request, response) {
                    var term = request.term;
                    if (term in cache) {
                        response(cache[term]);
                        return;
                    }

                    $.getJSON("search.ashx", request, function (data, status, xhr) {
                        cache[term] = data;
                        response(data);
                    });
                }
            });

        }
    
    </script>
</body>
</html>
