﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDetay : System.Web.UI.Page
{

    sqlsinif bgl=new sqlsinif();
    string yemekid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];

        //ben string olarak sorgumu istiyorum benim sorguladığım değer ne??
        //diğersayfada ? den sonra yazdığım yemekid değeri

        SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where yemekid =@p1 ", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yemekid);
        
        SqlDataReader oku= komut.ExecuteReader();
        while (oku.Read())
        {
            Label3.Text=oku[0].ToString();
        }
        //oku, nesnem okuma işlemi yaptığı müddetçe label3 e okudan gelen 0. paramterdeki değeri yazdır


        bgl.baglanti().Close();


        //yorumları listeleme

        SqlCommand komut2 = new SqlCommand("Select *From Tbl_Yorumlar where yemekid=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2= komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand komut = new SqlCommand("insert into  Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,yemekid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4",  yemekid);


        komut.ExecuteNonQuery();
        bgl.baglanti().Close();



    }
}