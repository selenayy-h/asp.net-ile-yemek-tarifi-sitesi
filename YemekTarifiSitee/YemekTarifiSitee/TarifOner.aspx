<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"><strong>Tarif Ad:<br />
                        <br />
                        Malzemeler:<br />
                        <br />
                        Yapılış:<br />
                        Resim:<br />
                        Tarif Öneren:<br />
                        Mail Adresi:</strong></td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <asp:TextBox ID="TxtTarifAd" runat="server" OnTextChanged="TextBox1_TextChanged" Width="200px"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" Width="200px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TxtTarifOneren" runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" Text="Tarif Öner" Width="150px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

