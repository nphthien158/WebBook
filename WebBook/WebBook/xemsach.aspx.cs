using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBook
{
    public partial class xemsach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnXem_Click(object sender, EventArgs e)
        {
            Response.Redirect("XemChiTiet.aspx");
        }
    }
}