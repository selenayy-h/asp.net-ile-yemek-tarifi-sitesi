<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style5 {
        font-size: large;
    }
        .auto-style6 {
            margin-left: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">
            <br />
            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                    <strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemeKMalzeme") %>'></asp:Label>
                    <br />
                    </strong>
                    <asp:Image ID="Image1" runat="server" Height="162px" Width="323px" CssClass="auto-style6" ImageUrl="~/resimler/Ekran görüntüsü 2024-09-21 201551.png" />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    <br />
                    Puan:<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    <br />
                    Tarih:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </ItemTemplate>
            </asp:DataList>
            <br />
        </td>
    </tr>
</table>
</asp:Content>

