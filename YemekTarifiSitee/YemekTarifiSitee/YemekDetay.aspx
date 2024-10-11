<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            background-color: #FFCCFF;
        text-align: center;
    }
    .auto-style11 {
        height: 23px;
        text-align: right;
    }
    .auto-style12 {
        background-color: #FFCCFF;
    }
    .auto-style13 {
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style10">YORUM YAPMA PANELİ </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style11">Ad Soyad:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Mail:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Yorumunuz:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="50px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" CssClass="tb5" OnClick="Button1_Click" Text="Yorum Yap " Width="92px" />
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

