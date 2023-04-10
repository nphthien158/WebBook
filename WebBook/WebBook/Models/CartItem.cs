using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBook.Models
{
    public class CartItem
    {
        public int MaSach { get; set; }
        public string TenSach { get; set; }
        public string Hinh { get; set; }
        public int GiaBan { get; set; }
        public int SoLuong { get; set; }
        public int ThanhTien { get  { return SoLuong * GiaBan; } }
    }
}