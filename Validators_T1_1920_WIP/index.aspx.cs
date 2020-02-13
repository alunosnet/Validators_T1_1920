using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators_T1_1920_WIP
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //verificar se tem sessão iniciada
            if (Session["email"] == null)
                divLogout.Visible = false;
            else
                divLogin.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //validar as credenciais

            //administrador
            if(tbEmail.Text=="admin@gmail.com" && tbPassword.Text == "12345")
            {
                //iniciar sessão
                Session["email"] = tbEmail.Text;
                Session["perfil"] = "admin";
                Session["inicio"] = DateTime.Now;

                //redicionar para área admin
                Response.Redirect("admin.aspx");
            }
            //utilizador
            if (tbEmail.Text == "joaquim@gmail.com" && tbPassword.Text == "12345")
            {
                //iniciar sessão
                Session["email"] = tbEmail.Text;
                Session["perfil"] = "user";
                Session["inicio"] = DateTime.Now;

                //redicionar para área admin
                Response.Redirect("users.aspx");
            }
            Label1.Text = "O login falhou. Tente novamente.";
        }
    }
}