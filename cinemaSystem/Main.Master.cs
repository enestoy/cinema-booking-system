using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace cinemaSystem
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                kullaniciAdi.Text = "";
                kullaniciAdi.Focus();
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string sql; int satir;
            OleDbConnection k = new OleDbConnection();
            k.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/kullanici.mdb");
            k.Open();
            sql = "select count(*) from password where user='" + kullaniciAdi.Text + "' and password='" + txtSifre.Text + "'";

            OleDbCommand komut = new OleDbCommand(sql, k);
            satir = (int)komut.ExecuteScalar(); // satir kısmı bir türlü çalışmıyor
            k.Close();

            //if(satir>0)
            //{
            //    Session["user"] = kullaniciAdi.Text;
            //    Response.Redirect("giris.aspx");
            //}
            //else
            //{
            //    lblSonuc.Text = "Kullanıcı adı şifre Hatalı";
            //}
        }
    }
}