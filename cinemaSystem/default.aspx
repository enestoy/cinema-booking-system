<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="cinemaSystem._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvfilm" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="536px" PageSize="6" Width="621px" OnSelectedIndexChanged="gvfilm_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField HeaderText="BİLET AL" ShowSelectButton="True" />
        <asp:BoundField DataField="id" HeaderText="Film No" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="film-adi" HeaderText="Film Adı" SortExpression="film-adi" />
        <asp:BoundField DataField="salon-no" HeaderText="Salon No" SortExpression="salon-no" />
        <asp:CheckBoxField DataField="kolavemisir" HeaderText="Kola Ve Mısır" SortExpression="kolavemisir" />
        <asp:BoundField DataField="saat" HeaderText="Film Saatti" SortExpression="saat" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:film %>" ProviderName="<%$ ConnectionStrings:film.ProviderName %>" SelectCommand="SELECT * FROM [film]"></asp:SqlDataSource>
    <br />
    <table class="auto-style1">
        <tr>
            <td>Film No:
                <asp:Label ID="lblfilmno" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td>Film Adı:&nbsp;&nbsp;
                <asp:TextBox ID="txtfilmismi" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Width="142px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Salon No:<asp:TextBox ID="txtsalon" runat="server" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
            </td>
            <td>Film Saatti:<asp:TextBox ID="txttarih" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Width="142px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">Kola Ve Mısır:&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="cbkola" runat="server" Font-Bold="True" Text="Evet" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnfilm" runat="server" BackColor="#0000CC" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="35px" Text="Bileti Kaydet" Width="125px" OnClick="btnfilm_Click" />
                <asp:Button ID="btnfilmsil" runat="server" BackColor="#0000CC" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="35px" Text="Bileti Temizle" Width="125px" OnClick="btnfilmsil_Click" />
            </td>
            <td>
                <asp:Label ID="lblfilmbtn" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
