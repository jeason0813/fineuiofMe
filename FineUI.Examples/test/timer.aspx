<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timer.aspx.cs" Inherits="FineUI.Examples.timer" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Label runat="server" ID="Label1">
    </x:Label>
    <x:SimpleForm ID="SimpleForm1" runat="server">
        <Items>
            <x:RadioButtonList ID="rblU_Sex" Label="性别" runat="server" ShowRedStar="true" Width="100">
                <x:RadioItem Text="男" Value="1" Selected="true" />
                <x:RadioItem Text="女" Value="2" />
            </x:RadioButtonList>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
