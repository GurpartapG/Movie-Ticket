<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gurpartap_Gill_Assignment3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100px;
        }
        .auto-style3 {
            width: 60px;
        }
        .auto-style4 {
            width: 185px;
        }
        .auto-style2 {
            width: 80px;
        }
        .auto-style5 {
            width: 60px;
            height: 26px;
        }
        .auto-style6 {
            width: 185px;
            height: 26px;
        }
        .auto-style7 {
            width: 80px;
            height: 26px;
        }
        .auto-style8 {
            width: 60px;
            height: 61px;
        }
        .auto-style9 {
            width: 185px;
            height: 61px;
        }
        .auto-style10 {
            width: 80px;
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Please login to begin your cinematic experience !"></asp:Label>
            <br />
&nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" Text="Last Name:" Width="130px"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="tbun" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbun" ErrorMessage="Provide Last Name" ForeColor="Red" Width="120px"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Account Number:" Width="130px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="tbpw" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbpw" ErrorMessage="Account Number needed" ForeColor="Red" Width="120px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOGIN" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registeration.aspx" Width="100px">New User? Register Here</asp:HyperLink>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Skip and continue!</asp:LinkButton>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
