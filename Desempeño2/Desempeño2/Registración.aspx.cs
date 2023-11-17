using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempeño2
{
    public partial class Registración : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Session["Nombre"] = TextBox2.Text;

            HttpCookie cookie1 = new HttpCookie("Contraseña", TextBox4.Text);
            cookie1.Expires = DateTime.Now.AddSeconds(30);
            Response.Cookies.Add(cookie1);
            Response.Redirect(Request.RawUrl);

        }
    }
}