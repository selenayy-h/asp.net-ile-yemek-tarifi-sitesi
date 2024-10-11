<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            background-color: #FFCCFF;
        }
    .auto-style12 {
        font-size: large;
    }
        .auto-style13 {
            height: 23px;
            text-align: left;
            width: 106px;
        }
        .auto-style14 {
            height: 23px;
            text-align: right;
        }
        .auto-style15 {
            width: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click1" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style3"><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server" ID="panel2">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                <a href ="KategoriDetayAdminaspx.aspx?Kategoriid=<%#Eval("Kategoriid") %>">       
             <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %> "> <asp:Image ID="image2" runat="server" Height="30px" ImageUrl="~/icons/update.png" Width="30px" /></a>   
                           </a>  </td>
                        <td class="auto-style14">
                          <a href ="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">   <asp:Image ID="image1" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" /></a>  
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style10">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button6" runat="server" Height="30px" OnClick="Button6_Click" Text="+" Width="30px" />
                    </td>
                    <td>
                        <asp:Button ID="Button7" runat="server" Height="30px" OnClick="Button7_Click" Text="-" Width="30px" />
                    </td>
                    <td class="auto-style3"><strong>KATEGORİ EKLEME</strong></td>
                </tr>
            </table>
        </asp:Panel>
</asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style6">KATEGORİ AD:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">KATEGORİ İKON:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6">
                    <asp:Button ID="BtnEkle" runat="server" OnClick="BtnEkle_Click" Text="Ekle" Width="127px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

