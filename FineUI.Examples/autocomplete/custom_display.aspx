<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_display.aspx.cs"
    Inherits="FineUI.Examples.autocomplete.custom_display" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../jqueryui/css/ui-lightness/jquery-ui-1.9.2.custom.min.css" />
    <style>
        .autocomplete-item-title
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" runat="server" LabelWidth="60px" Width="600px" BodyPadding="5px"
        EnableBackgroundColor="true" Title="简单表单">
        <Items>
            <x:TextBox ID="TextBox1" runat="server" Label="标题" EmptyText="输入字母 j 试试">
            </x:TextBox>
            <x:TextBox ID="TextBox2" Label="值" runat="server">
            </x:TextBox>
            <x:TextBox ID="TextBox3" Label="描述" runat="server">
            </x:TextBox>
        </Items>
    </x:SimpleForm>
    </form>
    <script src="../jqueryui/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="../jqueryui/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        function onReady() {
            var textbox1ID = '<%= TextBox1.ClientID %>';
            var textbox2ID = '<%= TextBox2.ClientID %>';
            var textbox3ID = '<%= TextBox3.ClientID %>';

            var projects = [
                {
                    value: "jquery",
                    label: "jQuery",
                    desc: "the write less, do more, JavaScript library"
                },
                {
                    value: "jquery-ui",
                    label: "jQuery UI",
                    desc: "the official user interface library for jQuery"
                },
                {
                    value: "sizzlejs",
                    label: "Sizzle JS",
                    desc: "a pure-JavaScript CSS selector engine"
                }
            ];

            $('#' + textbox1ID).autocomplete({
                minLength: 0,
                source: projects,
                select: function (event, ui) {
                    var $this = $(this);
                    $this.val(ui.item.label);
                    $('#' + textbox2ID).val(ui.item.value);
                    $('#' + textbox3ID).val(ui.item.desc);
                    return false;
                }
            }).data("autocomplete")._renderItem = function (ul, item) {
                return $("<li>").data("item.autocomplete", item)
                .append("<a><span class='autocomplete-item-title'>" + item.label + "</span><br/>" + item.desc + "</a>")
                .appendTo(ul);
            };

        }
    
    </script>
</body>
</html>
