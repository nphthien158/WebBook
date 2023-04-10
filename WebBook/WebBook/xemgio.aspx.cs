using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBook.Models;

namespace WebBook
{
    public partial class xemgio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NapDuLieu();
            }
        }

        private void NapDuLieu()
        {
            Cart cart = (Cart)Session["CART"];
            if (cart != null)
            {
                // Liên kết dữ liệu cho gvgiohang
                gvgiohang.DataSource = cart.Items;
                gvgiohang.DataBind();
                // Gán tổng thành tiền cho lbltongthanhtien
                lbltongthanhtien.Text = string.Format("Tổng Thành Tiền: <b> {0:#,##0} VNĐ </b>", cart.Total);
            }
        }

        protected void gvgiohang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Lấy mã sản phẫm cần xóa khỏi giỏ hàng 
            int masach = int.Parse(gvgiohang.DataKeys[e.RowIndex].Value.ToString());
            // lấy giỏ hàng từ session 
            Cart cart = (Cart)Session["CART"];
            // xóa sản phẩm khỏi giỏ 
            cart.Delete(masach);
            // Nạp lại dữ liệu cho gvGioHang
            NapDuLieu();
        }

        protected void gvgiohang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Lấy mã sản phẫm và số lượng cần cập nhật trong giỏ hàng 
            int masach = int.Parse(gvgiohang.DataKeys[e.RowIndex].Value.ToString());
            int soluongmoi = int.Parse(((TextBox)gvgiohang.Rows[e.RowIndex].FindControl("txtSoLuong")).Text);
            // lấy giỏ hàng từ session 
            Cart cart = (Cart)Session["CART"];
            // xóa sản phẩm khỏi giỏ 
            cart.Update(masach, soluongmoi);
            // Nạp lại dữ liệu cho gvGioHang
            NapDuLieu();
        }
    }
}