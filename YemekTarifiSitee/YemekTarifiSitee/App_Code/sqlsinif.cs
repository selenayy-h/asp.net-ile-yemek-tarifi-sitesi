using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class sqlsinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection("Data Source=LAPTOP-ACDH94DG\\SQLEXPRESS01;Initial Catalog=Dbo_yemektarif;Integrated Security=True");


        baglan.Open();
        return baglan;
    }
}