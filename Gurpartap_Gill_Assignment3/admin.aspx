<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Gurpartap_Gill_Assignment3.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="USER TABLE:"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="userId" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="userId" HeaderText="userId" InsertVisible="False" ReadOnly="True" SortExpression="userId" />
                    <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieConnectionString %>" DeleteCommand="DELETE FROM [UserDetails] WHERE [userId] = @userId" InsertCommand="INSERT INTO [UserDetails] ([AccountNumber], [FirstName], [LastName]) VALUES (@AccountNumber, @FirstName, @LastName)" SelectCommand="SELECT * FROM [UserDetails]" UpdateCommand="UPDATE [UserDetails] SET [AccountNumber] = @AccountNumber, [FirstName] = @FirstName, [LastName] = @LastName WHERE [userId] = @userId">
                <DeleteParameters>
                    <asp:Parameter Name="userId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountNumber" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountNumber" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="userId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label3" runat="server" Text="MOVIE TABLE:"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource2" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
                    <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                    <asp:BoundField DataField="Timing1" HeaderText="Timing1" SortExpression="Timing1" />
                    <asp:BoundField DataField="Timing2" HeaderText="Timing2" SortExpression="Timing2" />
                    <asp:BoundField DataField="Timing3" HeaderText="Timing3" SortExpression="Timing3" />
                    <asp:BoundField DataField="Seats1" HeaderText="Seats1" SortExpression="Seats1" />
                    <asp:BoundField DataField="Seats2" HeaderText="Seats2" SortExpression="Seats2" />
                    <asp:BoundField DataField="Seats3" HeaderText="Seats3" SortExpression="Seats3" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MovieConnectionString %>" DeleteCommand="DELETE FROM [MovieDetails] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [MovieDetails] ([MovieName], [Timing1], [Timing2], [Timing3], [Seats1], [Seats2], [Seats3]) VALUES (@MovieName, @Timing1, @Timing2, @Timing3, @Seats1, @Seats2, @Seats3)" SelectCommand="SELECT * FROM [MovieDetails]" UpdateCommand="UPDATE [MovieDetails] SET [MovieName] = @MovieName, [Timing1] = @Timing1, [Timing2] = @Timing2, [Timing3] = @Timing3, [Seats1] = @Seats1, [Seats2] = @Seats2, [Seats3] = @Seats3 WHERE [MovieID] = @MovieID">
                <DeleteParameters>
                    <asp:Parameter Name="MovieID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MovieName" Type="String" />
                    <asp:Parameter Name="Timing1" Type="String" />
                    <asp:Parameter Name="Timing2" Type="String" />
                    <asp:Parameter Name="Timing3" Type="String" />
                    <asp:Parameter Name="Seats1" Type="String" />
                    <asp:Parameter Name="Seats2" Type="String" />
                    <asp:Parameter Name="Seats3" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MovieName" Type="String" />
                    <asp:Parameter Name="Timing1" Type="String" />
                    <asp:Parameter Name="Timing2" Type="String" />
                    <asp:Parameter Name="Timing3" Type="String" />
                    <asp:Parameter Name="Seats1" Type="String" />
                    <asp:Parameter Name="Seats2" Type="String" />
                    <asp:Parameter Name="Seats3" Type="String" />
                    <asp:Parameter Name="MovieID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label4" runat="server" Text="PURCHASE TABLE:"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PurchaseId" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="PurchaseId" HeaderText="PurchaseId" InsertVisible="False" ReadOnly="True" SortExpression="PurchaseId" />
                    <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
                    <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="TimeSlot" HeaderText="TimeSlot" SortExpression="TimeSlot" />
                    <asp:BoundField DataField="GeneralTickets" HeaderText="GeneralTickets" SortExpression="GeneralTickets" />
                    <asp:BoundField DataField="SeniorTickets" HeaderText="SeniorTickets" SortExpression="SeniorTickets" />
                    <asp:BoundField DataField="TuesdayTickets" HeaderText="TuesdayTickets" SortExpression="TuesdayTickets" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MovieConnectionString %>" DeleteCommand="DELETE FROM [Purchase] WHERE [PurchaseId] = @PurchaseId" InsertCommand="INSERT INTO [Purchase] ([AccountNumber], [MovieName], [Date], [TimeSlot], [GeneralTickets], [SeniorTickets], [TuesdayTickets], [Amount]) VALUES (@AccountNumber, @MovieName, @Date, @TimeSlot, @GeneralTickets, @SeniorTickets, @TuesdayTickets, @Amount)" SelectCommand="SELECT * FROM [Purchase]" UpdateCommand="UPDATE [Purchase] SET [AccountNumber] = @AccountNumber, [MovieName] = @MovieName, [Date] = @Date, [TimeSlot] = @TimeSlot, [GeneralTickets] = @GeneralTickets, [SeniorTickets] = @SeniorTickets, [TuesdayTickets] = @TuesdayTickets, [Amount] = @Amount WHERE [PurchaseId] = @PurchaseId">
                <DeleteParameters>
                    <asp:Parameter Name="PurchaseId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountNumber" Type="String" />
                    <asp:Parameter Name="MovieName" Type="String" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="TimeSlot" Type="String" />
                    <asp:Parameter Name="GeneralTickets" Type="String" />
                    <asp:Parameter Name="SeniorTickets" Type="String" />
                    <asp:Parameter Name="TuesdayTickets" Type="String" />
                    <asp:Parameter Name="Amount" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountNumber" Type="String" />
                    <asp:Parameter Name="MovieName" Type="String" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="TimeSlot" Type="String" />
                    <asp:Parameter Name="GeneralTickets" Type="String" />
                    <asp:Parameter Name="SeniorTickets" Type="String" />
                    <asp:Parameter Name="TuesdayTickets" Type="String" />
                    <asp:Parameter Name="Amount" Type="String" />
                    <asp:Parameter Name="PurchaseId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Go Back</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
