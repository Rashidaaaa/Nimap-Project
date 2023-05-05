<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project_for_nimap.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="mycss.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="table-show">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" OnPageIndexChanging="OnPageIndexChanging"  CellSpacing="5" CellPadding="15"
                >
                 <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID"  HeaderStyle-CssClass="headerTitle" ItemStyle-CssClass="bookTitle titleWidth"/>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" HeaderStyle-CssClass="headerTitle" ItemStyle-CssClass="bookTitle titleWidth"/>
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID"  HeaderStyle-CssClass="headerTitle" ItemStyle-CssClass="bookTitle titleWidth"/>
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" HeaderStyle-CssClass="headerTitle" ItemStyle-CssClass="bookTitle titleWidth"/>
            </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
