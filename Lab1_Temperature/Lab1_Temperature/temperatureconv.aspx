<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temperatureconv.aspx.cs" Inherits="Lab1_Temperature.temperatureconv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 226px;
        }
        .auto-style2 {
            width: 218px;
        }
        .auto-style3 {
            width: 496px;
            height: 356px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Temperature Converter"></asp:Label>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/temp.png" Width="175px" />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="To"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="drdlsttempFrom" runat="server">
                            <asp:ListItem Value="C">Celsius</asp:ListItem>
                            <asp:ListItem Value="F">Fahrenheit</asp:ListItem>
                            <asp:ListItem Value="K">Kelvin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="drdlsttempTo" runat="server">
                            <asp:ListItem Value="C">Celsius</asp:ListItem>
                            <asp:ListItem Value="F">Fahrenheit</asp:ListItem>
                            <asp:ListItem Value="K">Kelvin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Input temperature:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttempIn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Output temperature:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttempOut" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnConv" runat="server" Text="Convert" OnClick="btnConv_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnClr" runat="server" Text="Clear" OnClick="btnClr_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
