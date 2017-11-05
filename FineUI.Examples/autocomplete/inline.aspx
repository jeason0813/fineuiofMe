<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inline.aspx.cs" Inherits="FineUI.Examples.autocomplete.inline" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../jqueryui/css/ui-lightness/jquery-ui-1.9.2.custom.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" runat="server" Width="600px" BodyPadding="5px" EnableBackgroundColor="true"
        Title="简单表单">
        <Items>
            <x:TextBox ID="TextBox1" runat="server" ShowLabel="false" EmptyText="输入字母 a 试试">
            </x:TextBox>
        </Items>
    </x:SimpleForm>
    </form>
    <script src="../jqueryui/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="../jqueryui/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        function onReady() {
            var textbox1ID = '<%= TextBox1.ClientID %>';

            var availableTags = [
                "ActionScript",
                "AppleScript",
                "Asp",
                "BASIC",
                "C",
                "C++",
                "Clojure",
                "COBOL",
                "ColdFusion",
                "Erlang",
                "Fortran",
                "Groovy",
                "Haskell",
                "Java",
                "JavaScript",
                "Lisp",
                "Perl",
                "PHP",
                "Python",
                "Ruby",
                "Scala",
                "Scheme"];

            $('#' + textbox1ID).autocomplete({
                source: availableTags
            });

        }
    
    </script>
</body>
</html>
