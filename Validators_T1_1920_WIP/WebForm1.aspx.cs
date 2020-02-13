using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators_T1_1920_WIP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nome = args.Value.Trim();
            //testamos o tamanho do nome
            if (nome.Length < 3)
            {
                //nome não é válido
                args.IsValid = false;
                return; //termina execução
            }
            //nome é válido
            args.IsValid = true;
        }
    }
}