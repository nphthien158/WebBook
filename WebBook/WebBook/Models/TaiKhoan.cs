using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


namespace WebBook.Models
{
    public class TaiKhoan
    {
        public string TenDangNhap { set; get; }
        public string MatKhau { set; get; }
        public string VaiTro { set; get; }
    }
   
}