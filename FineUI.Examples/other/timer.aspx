<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timer.aspx.cs" Inherits="FineUI.Examples.other.timer" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Timer ID="Timer1" Interval="5" Enabled="false" OnTick="Timer1_Tick" EnableAjaxLoading="false" runat="server">
    </x:Timer>
    <x:Button ID="btnStartTimer" runat="server" CssClass="inline" Text="启动定时器"
        OnClick="btnStartTimer_Click">
    </x:Button>
    <x:Button ID="btnStopTimer" runat="server" Text="停止定时器" OnClick="btnStopTimer_Click">
    </x:Button>
    <br />
    <br />
    点击“启动定时器”，下面的文本会每隔 5 秒钟更新一次。
    <br />
    <x:Label ID="labServerTime" runat="server" CssStyle="color:red;">
    </x:Label>
    </form>
</body>
</html>
