using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        int id = Convert.ToInt32(Request.QueryString["Yorumid"]);//DEĞİŞTİRİLDİ

        if (Page.IsPostBack == false)
        {



            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from tbl_yorumlar inner join tbl_yemekler on  tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[0].ToString();
                txtmail.Text = dr[1].ToString();
                txticerik.Text = dr[2].ToString();
                Txtyemek.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update tbl_yorumlar set  yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", txticerik.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}