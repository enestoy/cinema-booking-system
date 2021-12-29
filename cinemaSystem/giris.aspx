<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="cinemaSystem.giriş" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="25px" OnClick="Button1_Click" Text="Çıkış" Width="133px" />
</asp:Content>
