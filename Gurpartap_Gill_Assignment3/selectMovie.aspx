<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectMovie.aspx.cs" Inherits="Gurpartap_Gill_Assignment3.selectMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="PLEASE SELECT ONE OF THE FOLLOWING MOVIE:"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style1" Height="215px" ImageUrl="~/images/blackWidow.jpg" OnClick="ImageButton1_Click" Width="179px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style1" Height="215px" ImageUrl="~/images/wonderWoman.jpg" OnClick="ImageButton2_Click" Width="179px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style1" Height="215px" ImageUrl="~/images/birdsOfPrey.jpg" OnClick="ImageButton3_Click" Width="179px" />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" CssClass="auto-style1" Height="215px" ImageUrl="~/images/scoob.jpg" OnClick="ImageButton4_Click" Width="179px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton5" runat="server" CssClass="auto-style1" Height="215px" ImageUrl="~/images/quietPlace.jpg" OnClick="ImageButton5_Click" Width="179px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
    </form>
</body>
</html>
