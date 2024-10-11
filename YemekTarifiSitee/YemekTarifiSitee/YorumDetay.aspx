<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        height: 26px;
    }
    .auto-style11 {
        height: 26px;
        text-align: right;
    }
    .auto-style12 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtAd" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mail Adresi:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="txtmail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>İçerik:</strong></td>
        <td>
            <asp:TextBox ID="txticerik" runat="server" CssClass="tb5" Height="75px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Yemek:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="Txtyemek" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" OnClick="Button1_Click" Text="Onayla" Width="121px" />
        </td>
    </tr>
</table>
</asp:Content>

