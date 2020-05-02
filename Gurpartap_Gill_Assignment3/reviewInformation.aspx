<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reviewInformation.aspx.cs" Inherits="Gurpartap_Gill_Assignment3.reviewInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="FINAL PURCHASE1"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="First Name:" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server" Width="130px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblLastName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Account Number:" Width="130px"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAccount" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Movie:" Width="130px"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblMovie" runat="server" Width="130px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label22" runat="server" Text="Date:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Time Slot:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblTime" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Category" Width="130px"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Price" Width="130px"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Quantity" Width="130px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="General"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblGeneralPrice" runat="server"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblGeneralQty" runat="server"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Senior Citizen &amp; Children (&lt;13 years)"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblSeniorPrice" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblSeniorQty" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTuesday" runat="server" Text="Tuesday Special" Visible="False"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblTuesdayPrice" runat="server" Visible="False"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblTuesdayQty" runat="server" Visible="False"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="Total Price:" Width="130px"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblPrice" runat="server" Width="130px"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text="Amount of discount (if applicable):" Width="130px"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lblDiscount" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label21" runat="server" Text="Total Amount:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAmount" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Visible="False">Log Out</asp:LinkButton>
            <br />
        </div>
    </form>
</body>
</html>
