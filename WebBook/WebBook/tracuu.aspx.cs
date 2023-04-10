using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using WebBook.Models;
using System.Web.UI.WebControls;

namespace WebBook
{
    public partial class tracuu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            int masach = int.Parse(((Button)sender).CommandArgument);
            //Response.Write("<script> alert('" + mahoa + "') </script>");

            // Thêm sản phẩm vào giỏ hàng (dùng lớp Cart, CartItem và đối tượng sesion
            Cart cart = (Cart)Session["CART"]; // Vào sesion lấy ra giỏ hàng của người dùng
            if (cart == null) // Người dùng chưa có giỏ hàng
            {
                cart = new Cart(); // Tạo giỏ hàng mới
                Session["CART"] = cart;

            }
            // Thêm sản phẩm vào giỏ 

            cart.Add(masach);

            // Thông báo cho người dùng hoặc chuyển hướng đến trang XemGio.aspx
            Response.Write("<script> alert('Đã thêm sản phẩm vào giỏ') </script>");
        }

        protected void txtTenSach_TextChanged(object sender, EventArgs e)
        {

        }
    }
}