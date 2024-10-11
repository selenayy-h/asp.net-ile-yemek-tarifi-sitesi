<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style10 {
            background-color: #FFCCFF;
        }
        .auto-style15 {
            width: 64px;
        }
        .auto-style13 {
            height: 23px;
            text-align: left;
            width: 106px;
        }
        .auto-style12 {
        font-size: large;
    }
        .auto-style14 {
            height: 23px;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="-" Width="30px"  />
                    </strong></td>
                <td class="auto-style3"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style14">
                                <asp:Image ID="image2" runat="server" Height="30px" ImageUrl="~/icons/update.png" Width="30px" />
                                </a></a></td>
                            <td class="auto-style14">
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>


    </asp:Panel>
    </asp:Content>

