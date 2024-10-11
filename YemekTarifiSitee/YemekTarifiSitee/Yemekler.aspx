<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>


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
        .auto-style16 {
            border: 2px solid pink;
            border-radius: 10px;
            outline: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style3"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server" ID="panel2">
<asp:DataList ID="DataList1" runat="server" >

            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                <a href ="KategoriDetayAdminaspx.aspx?Kategoriid=<%#Eval("Kategoriid") %>">       
             <a href="YemekDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %> "> <asp:Image ID="image2" runat="server" Height="30px" ImageUrl="~/icons/update.png" Width="30px" /></a>   
                           </a>  </td>
                        <td class="auto-style14">
                          <a href ="Yemekler.aspx?Yemekid=<%#Eval("yemekid") %>&islem=sil">   <asp:Image ID="image1" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" /></a>  
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style10">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button6" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button6_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button7" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button7_Click" />
                    </td>
                    <td class="auto-style3"><strong>YEMEK EKLEME</strong></td>
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
                <td class="auto-style14">YEMEK AD:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">MALZEMELER:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="75px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">YEMEK TARİFİ:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="75px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">KATEGORİ:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style16" Width="234px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="BtnEkle" runat="server" CssClass="tb5" OnClick="BtnEkle_Click" Text="Ekle" Width="127px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

