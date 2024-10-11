<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        height: 26px;
    }
    .auto-style11 {
        text-align: right;
    }
    .auto-style12 {
        height: 26px;
        text-align: right;
    }
    .auto-style13 {
        border: 2px solid pink;
        border-radius: 10px;
        outline: none;
        margin-left: 22px;
    }
    .auto-style14 {
        text-align: right;
        height: 140px;
    }
    .auto-style15 {
        height: 140px;
    }
    .auto-style16 {
        width: 100%;
        height: 360px;
        margin-bottom: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Yemek Ad:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="130px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Tarif:</strong></td>
        <td class="auto-style15">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="130px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Kategori:</strong></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="119px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="36px" OnClick="Button1_Click" Text="Güncelle" Width="101px" />
        </td>
    </tr>
</table>
</asp:Content>

