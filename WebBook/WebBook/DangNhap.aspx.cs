using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBook.Models;

namespace WebBook
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangNhap_Click(object sender, EventArgs e)
        {
            string tendangnhap = txtTenDangNhap.Text;
            string matkhau = txtMatKhau.Text;
            //truy xuat CSDL de kiem tra ton tai tai khoan can dang nhap
            TaiKhoanDAO tkDao = new TaiKhoanDAO();
            TaiKhoan tk = tkDao.checkLogin(tendangnhap, matkhau);
            if (tk == null)
            {
                lbThongBao.Text = "Tên đăng nhập hoặc mật khẩu không đúng. Đăng nhập thất bại";
            }
            else
            {
                Session["user"] = tk;
                if (tk.VaiTro=="user")
                {
                    Response.Redirect("default.aspx");
                }
                else if(tk.VaiTro=="admin")
                {
                    Response.Redirect("admin.aspx");
                }
            }
        }
    }
}