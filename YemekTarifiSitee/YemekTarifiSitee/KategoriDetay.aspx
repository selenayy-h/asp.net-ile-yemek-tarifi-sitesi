<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>" >
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td>&nbsp;Malzemeler:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarifi:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Eklenme Tarihi:
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    &nbsp; Puan:
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            Lezzet dolu bir dünyaya hoş geldiniz! Sitemiz, mutfak tutkunları için yaratılmış bir platformdur. İster yeni tarifler denemek isteyin, ister klasik yemekleri keşfetmek, burada her damak zevkine uygun tarifleri bulabilirsiniz. Yemek yapmayı sevenlerin buluşma noktası olarak, en taze malzemelerle yapılan, evde kolayca hazırlayabileceğiniz tarifleri sizlerle paylaşıyoruz. Amacımız, mutfağınıza ilham getirerek sofralarınıza lezzet katmak. Afiyet olsun!
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

