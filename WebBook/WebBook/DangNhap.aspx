<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebBook.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
            height: 281px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div style="margin-top: 100px; margin-left: auto; margin-right: auto; margin-bottom: 0;" class="auto-style1">
            <div class="panel panel-info">
                <div class="panel-heading"><b>ĐĂNG NHẬP HỆ THỐNG </b></div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="email">Tên đăng nhập:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtTenDangNhap" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="pwd">Mật khẩu:</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button ID="btDangNhap" runat="server" Text="Đăng nhập" CssClass="btn btn-success" OnClick="btDangNhap_Click" />
                                <div></div>
                                <p><a href="QuenMatKhau.aspx">Quên Mật Khẩu</a> Nếu chưa có tài khoản vui lòng <a href="DangKy.aspx">Đăng Ký </a></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Label ID="lbThongBao" runat="server" Text="" ForeColor="#cc3300"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
