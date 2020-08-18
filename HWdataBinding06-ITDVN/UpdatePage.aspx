<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="HWdataBinding06_ITDVN.UpdatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Чтение всех данных из таблицы" OnClick="ReadAllButton_Click" /><br />
            <asp:Label ID="ReadAllOutput" runat="server" Text=""></asp:Label>
            <hr />
            <br />
            <asp:Label ID="Label2" runat="server" Text="FirstName"></asp:Label>
            <asp:TextBox ID="LoginTextBox" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="LastName"></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
            <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label6" runat="server" Text="Comments"></asp:Label>
            <asp:TextBox ID="CommentTextBox" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button4" runat="server" Text="Добавить" OnClick="AddNewEntryButton_Click" />
            <asp:Label ID="ErrorOutput" runat="server" Text=""></asp:Label>
            <hr />
            <br />
            Id
            <asp:TextBox ID="IdToRemoveTextBox" runat="server" Height="22px"  ToolTip="Введите Id"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Удалить" OnClick="RemoveByIdButton_Click"/>
            <asp:Label ID="ErrorOutput2" runat="server" Text=""></asp:Label>
                        <br />
            <asp:Button ID="Button3" runat="server" Text="Перейти на страници изменения таблицы" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
