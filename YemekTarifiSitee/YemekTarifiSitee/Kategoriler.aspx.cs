﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Kategoriler : System.Web.UI.Page
{


    sqlsinif bgl=new sqlsinif();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];

        }
            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


        //silme işlemi

        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete From Tbl_Kategoriler where kategoriid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
            panel2.Visible = false;
            Panel4.Visible = false;

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        panel2.Visible = false;

    }

    
    
    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;

    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());

        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}