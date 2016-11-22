using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeanEx
{
	public partial class index : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        [WebMethod]
        public static int registro(string users, string password) {

            if (users == "juan" && password == "juan")
            {
                string entro = "555";
            }
            return 1;
        }
	}
}