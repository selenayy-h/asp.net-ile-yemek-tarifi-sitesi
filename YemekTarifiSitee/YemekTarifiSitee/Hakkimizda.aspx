<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            color: #FFCCFF;
        }
        .auto-style6 {
            font-size: x-large;
        }
    .auto-style7 {
        margin-left: 7px;
    }
    .auto-style8 {
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style5">
        <strong><span class="auto-style6">HAKKIMIZDA </span>&nbsp;&nbsp; </strong>
    </p>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <div class="auto-style3">
                <strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text='<%# Eval("Metin") %>'></asp:Label>
                </strong>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:Image ID="Image1" runat="server" CssClass="auto-style7" Height="278px" ImageUrl="~/resimler/Ekran görüntüsü 2024-09-07 220342.png" Width="435px" />
</asp:Content>

