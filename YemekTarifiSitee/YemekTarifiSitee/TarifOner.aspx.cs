using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TarifOner : System.Web.UI.Page
{

    sqlsinif bgl=new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

       


        SqlCommand komut = new SqlCommand("insert into Tbl_Tariflerr (TarifAd,TarifMalzeme,TarifYapilis,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t5,@t6)", bgl.baglanti());

        komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);

        komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);

        komut.Parameters.AddWithValue("@t3", TxtYapilis.Text);

        komut.Parameters.AddWithValue("@t5", TxtTarifOneren.Text);

        komut.Parameters.AddWithValue("@t6", TxtMailAdresi.Text);


        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Tarifiniz Alınmıştır...");
    }
}