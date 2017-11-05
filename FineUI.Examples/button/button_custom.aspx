<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_custom.aspx.cs" Inherits="FineUI.Examples.button.button_custom" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .bgbtn {
            background: url(../images/login.png) no-repeat;
            width: 320px;
            height: 50px;
        }

        .bgbtn .x-btn-tl, .bgbtn .x-btn-tr, .bgbtn .x-btn-tc,
        .bgbtn .x-btn-ml, .bgbtn .x-btn-mr, .bgbtn .x-btn-mc,
        .bgbtn .x-btn-bl, .bgbtn .x-btn-br, .bgbtn .x-btn-bc {
            background-image: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:Button ID="Button1" Text="普通按钮" runat="server" Size="Large" OnClick="Button1_Click" />
        <br />
        <br />

        <x:Button ID="Button2" Text="" CssClass="bgbtn" runat="server" OnClick="Button2_Click" />

    </form>
</body>
</html>
