<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cssstyle.aspx.cs" Inherits="FineUI.Examples.other.cssstyle" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .red
        {
            font-weight: bold;
            color: Red;
        }
        .green
        {
            font-weight: bold;
            font-style: italic;
            font-size: 1.2em;
            color: Green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="通过 CssStyle 修改文本的样式">
    </x:Button>
    <br />
    <x:Label ID="Label1" runat="server" Text="文本一，注意观察文本的样式">
    </x:Label>
    <br />
    <br />
    <x:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="通过 CssClass 修改文本的样式">
    </x:Button>
    <br />
    <x:Label ID="Label2" runat="server" CssClass="red" Text="文本二，注意观察文本的样式">
    </x:Label>
    <br />
    <br />
    <br />
    注意：每次修改 CssStyle 属性时，不会删除上次 CssStyle 的样式，所有每次修改的样式必须要覆盖上次的样式。
    <br />
    每次修改 CssClass 属性时，会自动删除上次的 CssClass 属性。 推荐使用 CssClass 属性。
    </form>
</body>
</html>
