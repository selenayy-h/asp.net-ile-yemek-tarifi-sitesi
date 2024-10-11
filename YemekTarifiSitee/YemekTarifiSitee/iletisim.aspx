<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
        height: 256px;
    }
    .auto-style6 {
        font-size: medium;
        text-align: right;
    }
    .auto-style7 {
            font-size: medium;
            text-align: right;
            height: 46px;
            background-color: #CCCCFF;
        }
    .auto-style8 {
        height: 46px;
    }
    .auto-style9 {
        height: 38px;
    }
    .auto-style11 {
        height: 28px;
        font-size: x-large;
        text-align: center;
    }
    .auto-style12 {
        color: #FFCCFF;
        background-color: #CCCCFF;
    }
    .auto-style13 {
        font-size: medium;
        text-align: right;
        height: 36px;
    }
    .auto-style14 {
        height: 36px;
    }
        .auto-style15 {
            font-size: medium;
            text-align: right;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style11" colspan="2"><strong><span class="auto-style12">MESAJ PANELİ</span></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Ad Soyad:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style16">
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Konu:</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style9"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" OnClick="Button1_Click" Text="Gönder" Width="174px" />
            </strong></td>
    </tr>
</table>
</asp:Content>

