<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="WebBook.add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-5 text-center">
                Nhà Xuẩt Bản
                <asp:DropDownList ID="ddlNXB" runat="server"></asp:DropDownList>
            </div>
            <div class="col text-center">
                Tên Sách
                <asp:TextBox ID="txttensach" runat="server"></asp:TextBox>
            </div>
            <div class="col text-center">
                Gía
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
            </div>
            <div class="col text-center">
                NgayCapNhat                
            </div>
            <div class="col text-center">
                <asp:Calendar ID="cldNgay" runat="server"></asp:Calendar>
            </div>
            <div class="col text-center">
                Hình
                <asp:FileUpload ID="FHinh" runat="server" />
            </div>
            <div class="col text-center">
                <asp:Button ID="btnThem" runat="server" Text="Thêm Mới" OnClick="btnThem_Click" />
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="dsNXB" runat="server" ConnectionString="<%$ ConnectionStrings:DataBookConnectionString %>" SelectCommand="SELECT * FROM [Sach]"></asp:SqlDataSource>
</asp:Content>
