<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="cinemaSystem.duyurular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image1" runat="server" Height="376px" ImageUrl="~/resim/back.jpg" Width="197px" ToolTip="Back to the future 4" />
    <asp:Image ID="Image2" runat="server" Height="376px" ImageUrl="~/resim/matrix.jpg" Width="197px" ToolTip="Matrix 4" />
    <asp:Image ID="Image3" runat="server" Height="376px" ImageUrl="~/resim/john.jpg" Width="197px" ToolTip="John Wick Chapter 4" />
    <br />
    <br />
    <asp:Image ID="Image5" runat="server" Height="376px" ImageUrl="~/resim/addams.jpg" Width="197px" ToolTip="Addam Ailesi" />
    <asp:Image ID="Image6" runat="server" Height="376px" ImageUrl="~/resim/avatar.jpg" Width="197px" ToolTip="Avatar 2" />
    <asp:Image ID="Image7" runat="server" Height="376px" ImageUrl="~/resim/hizli.jpg" Width="197px" ToolTip="Fast And Furious 9" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" BackColor="#FF3300" CssClass="auto-style1" Font-Bold="True" Width="215px">   ÇOK YAKINDA SİNEMALARDA..</asp:TextBox>
&nbsp; 
</asp:Content>
