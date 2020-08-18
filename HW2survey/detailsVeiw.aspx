<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailsVeiw.aspx.cs" Inherits="HW2survey.detailsVeiw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
    <title>SurveyDetails</title>
    <style> 
        .det{
            margin: 0 auto;
        }
    </style>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container col-12">
            <div class="py-5 text-center justify-content-center align-items-center align-content-center">
                <h1>Таблица данных</h1>
            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="det" Height="539px" Width="80%" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowPaging="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                    <asp:BoundField DataField="NameWork" HeaderText="NameWork" SortExpression="NameWork" />
                    <asp:BoundField DataField="NominationWork" HeaderText="NominationWork" SortExpression="NominationWork" />
                    <asp:BoundField DataField="Discipline" HeaderText="Discipline" SortExpression="Discipline" />
                    <asp:BoundField DataField="Accept" HeaderText="Accept" SortExpression="Accept" />
                    <asp:BoundField DataField="LevelAccept" HeaderText="LevelAccept" SortExpression="LevelAccept" />
                    <asp:BoundField DataField="Organization" HeaderText="Organization" SortExpression="Organization" />
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                    <asp:BoundField DataField="NumberPhone" HeaderText="NumberPhone" SortExpression="NumberPhone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="HowListenUs" HeaderText="HowListenUs" SortExpression="HowListenUs" />
                    <asp:BoundField DataField="HowListenUsYourself" HeaderText="HowListenUsYourself" SortExpression="HowListenUsYourself" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CConnectionString %>" SelectCommand="SELECT * FROM [SurveyTables]"></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Text="Анкета" OnClick="Button1_Click" CssClass="btn btn-success mt-4" Width="20%"/>
        </div>
       </div>
    </form>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>
