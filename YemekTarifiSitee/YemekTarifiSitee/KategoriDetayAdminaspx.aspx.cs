using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class KategoriDetayAdminaspx : System.Web.UI.Page
{

    sqlsinif bgl = new sqlsinif();
    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);

        if (Page.IsPostBack == false)//bunun anlalmı sayfayı yeniden yükleme bir kere yükleieysen tamamdır
            //bir kere yüklediysen al bir daha onun üzerine bir şey yapma
        {
            SqlCommand cmd = new SqlCommand(" Select * From Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand(" update Tbl_Kategoriler set KategoriAd=@p1,kategoriadet=@p2 where kategoriid=@p3", bgl.baglanti());

        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p3", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}