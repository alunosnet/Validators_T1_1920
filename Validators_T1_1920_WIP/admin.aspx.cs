using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators_T1_1920_WIP
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //testar iniciou sessão
            if (Session["email"] == null)
                Response.Redirect("index.aspx");

            //testar se é admin
            if (Session["perfil"].ToString() != "admin")
                Response.Redirect("index.aspx");
        }
    }
}