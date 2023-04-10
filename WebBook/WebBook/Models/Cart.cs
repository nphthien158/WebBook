using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography.X509Certificates;

namespace WebBook.Models
{
    public class Cart
    {
        // Khai báo danh sách dùng để lưu trữ các sản phẩm
        private List<CartItem> _items;

        public Cart()
        {
            _items = new List<CartItem>();
        }
        // Phương thức trả về các ds sản phẩm trong giỏ 
        public List<CartItem> Items { get { return _items; } }

        // Phương thức thêm sản phẩm vào giỏ
        public void Add(int masach)
        {
            // truy xuất csdl để lấy thông tin cần thêm vào giỏ
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataBookConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Sach where MaSach=@masach", conn);
            cmd.Parameters.AddWithValue("@masach", masach);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                // tạo đối tượng cartItem
                CartItem sp = new CartItem
                {
                    MaSach =masach,
                    TenSach = dr["TenSach"].ToString(),
                    Hinh = dr["hinh"].ToString(),
                    GiaBan = int.Parse(dr["GiaBan"].ToString()),
                    SoLuong = 1

                };
                for (int i = 0; i < _items.Count; i++)
                {
                    if (_items[i].MaSach == masach)
                    {
                        _items[i].SoLuong++;
                        break;
                    }
                }
                _items.Add(sp);
            }
        }
        // Phương thức cập nhật số lượng
        public void Update(int masach, int soluong)
        {
            for (int i = 0; i < _items.Count; i++)
            {
                if (_items[i].MaSach == masach)
                {
                    if (soluong > 0)
                    {
                        _items[i].SoLuong = soluong;
                        break;
                    }
                    else
                    {
                        _items.RemoveAt(i);
                        break;
                    }
                }
            }
        }
        // Phương thức xóa sản phẩm khỏi giỏ
        public void Delete(int masach)
        {
            for (int i = 0; i < _items.Count; i++)
            {
                if (_items[i].MaSach == masach)
                {
                    _items.RemoveAt(i);
                    break;
                }
            }
        }
        // Phương thức tính tổng thành tiền
        public int Total
        {
            get
            {
                int tong = 0;
                foreach (CartItem item in _items)
                {
                    tong += item.ThanhTien;
                }
                return tong;
            }
        }
    }
}