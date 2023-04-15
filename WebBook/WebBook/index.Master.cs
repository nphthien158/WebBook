using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBook.Models;
namespace WebBook
{   
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TaiKhoan tk = (TaiKhoan)Session["USER"];
            //lblacc.Text = "Thuan";

            //if (tk == null || tk.VaiTro != "Khach")
            //{
            //    Response.Redirect("DangNhap.aspx");
            //}
            //else
            //{
            //    lblacc.Text = "Tên đăng nhập:" + tk.TenDangNhap;
            //}
        }
    }
}
