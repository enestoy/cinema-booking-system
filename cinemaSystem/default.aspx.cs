using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace cinemaSystem
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvfilm_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gvfilm.SelectedIndex > -1)// bir satır seçili
            {
                veridoldur();
            }
        }
        void veridoldur()
        {
            lblfilmno.Text = gvfilm.SelectedRow.Cells[1].Text;
            txtfilmismi.Text = gvfilm.SelectedRow.Cells[2].Text;
            txtsalon.Text = gvfilm.SelectedRow.Cells[3].Text;
            cbkola.Checked = (gvfilm.SelectedRow.Cells[4].Controls[0]
            as CheckBox).Checked;
            txttarih.Text = gvfilm.SelectedRow.Cells[5].Text;


        }

        protected void btnfilmsil_Click(object sender, EventArgs e)
        {
            gvfilm.SelectedIndex = -1;
            verileribosalt();
            lblfilmbtn.Text = "Seçili bilet silinmiştir.";
        }
        public void verileribosalt()
        {
            lblfilmno.Text = "";
            txtfilmismi.Text = "";
            txtsalon.Text = "";
            cbkola.Checked = false;
            txttarih.Text = "";
            
            
        }

        protected void btnfilm_Click(object sender, EventArgs e)
        {
            if (gvfilm.SelectedIndex > -1)
            {
                lblfilmbtn.Text = "Bilet Başarıyla Alınmıştır.";
                verileribosalt();
            }

        }
    }
}