using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebBook
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataBookConnectionString"].ConnectionString);
                cnn.Open();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter("select * from NhaXuatBan", cnn);
                da.Fill(dt);
                ddlNXB.DataSource = dt;
                ddlNXB.DataTextField = "TenNSB";
                ddlNXB.DataValueField = "MaNSB";
                ddlNXB.DataBind();
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataBookConnectionString"].ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("insert into Sach (TenSach,Gia,Hinh,MaNSB,NgayDang)" + "values('" + txttensach.Text + "'," + txtGia.Text + "',N'" + FHinh.FileName + "'," + ddlNXB.SelectedValue + "," + cldNgay.SelectedDate + ",0", cnn);
            if (FHinh.HasFile) // nếu có hình của sản phẩm
            {
                // xu lý upload hình lên server
                string path = Server.MapPath("~/Uploads/") + "/" + FHinh.FileName;
                FHinh.SaveAs(path);
                //truyền giá trị cho tham số hình hoa
                cmd.Parameters.AddWithValue("@hinh", FHinh.FileName);
            }
            else
            {
                cmd.Parameters.AddWithValue("@hinh", "NoImage.png");
            }
        }
    }
}