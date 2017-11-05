<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="image.aspx.cs" Inherits="FineUI.Examples.form.image" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    Icon="World"：
    <x:Image ID="Image1" runat="server" Icon="World">
    </x:Image>
    <br />
    ImageUrl="../icon/world.png"：
    <x:Image ID="Image2" runat="server" ImageUrl="../icon/world.png">
    </x:Image>
    <br />
    ImageUrl="../images/logo/favicon.gif" ImageCssStyle="border:solid 1px #ccc;padding:5px;"：
    <x:Image ID="Image3" runat="server" ImageWidth="32" ImageHeight="32" ImageCssStyle="border:solid 1px #ccc;padding:5px;"
        ImageUrl="../images/logo/favicon.gif">
    </x:Image>
    <br />
    <x:Button runat="server" Text="改变图片的大小" ID="Button1" OnClick="Button1_Click">
    </x:Button>
    </form>
</body>
</html>
