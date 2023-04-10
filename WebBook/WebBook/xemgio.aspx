<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="xemgio.aspx.cs" Inherits="WebBook.xemgio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <h1>Cart</h1>
    <asp:GridView DataKeyNames="masach" ID="gvgiohang" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" OnRowDeleting="gvgiohang_RowDeleting" OnRowUpdating="gvgiohang_RowUpdating">
        <Columns>
            <asp:ImageField HeaderText="Ảnh Sản Phẩm" DataImageUrlField="hinh" DataImageUrlFormatString="Uploads/{0}" ControlStyle-Width="150px"></asp:ImageField>
            <asp:BoundField HeaderText="Tên Sản Phẩm" DataField="tensach" />
            <asp:BoundField HeaderText="Đơn Giá" DataField="GiaBan" DataFormatString="{0:#,##0 VNĐ}" />
            <asp:TemplateField HeaderText="Số Lượng">
                <ItemTemplate>
                    <asp:TextBox Width="80px" TextMode="Number" CssClass="form-control text-center" ID="txtsoluong" runat="server" Text='<%# Eval("soluong")%>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Thành Tiền" DataField="thanhtien" DataFormatString="{0:#,##0 Đ}" />
            <asp:CommandField ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="~/Uploads/delete.gif" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton CommandName="update" ID="ImageButton1" runat="server" ImageUrl="~/Uploads/disk.gif" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <div class="alert alert-info">Chưa có sản phẩm trong giỏ</div>
        </EmptyDataTemplate>
    </asp:GridView>
    <div class="row">
        <div class="col-md-6">
            <a href="xemsach.aspx" class="btn btn-danger">Tiếp Tục Mua Hàng</a>
        </div>
        <div class="text-right">
            <asp:Label ID="lbltongthanhtien" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-bottom:10px">
        <div class="col-md-12 text-right">
            <a href="#" class="btn btn-success">Đặt Hàng</a>
        </div>
    </div>
</asp:Content>
