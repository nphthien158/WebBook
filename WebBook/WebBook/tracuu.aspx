<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="tracuu.aspx.cs" Inherits="WebBook.tracuu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <h2>Tra cứu sách</h2>
    Tên sách :
    <asp:TextBox ID="txtTenSach" Text=" " runat="server"></asp:TextBox>
    <asp:Button ID="btn" runat="server" Text="Seach" CssClass="btn btn-danger" />
    <asp:GridView ID="gvSach" runat="server" CssClass="table table-bordered " AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaSach" DataSourceID="SqlDataSource1" AlternatingRowStyle-BorderColor="#FFCCCC">
        <Columns>
            <asp:BoundField DataField="TenSach" HeaderText="Tên Sách" ControlStyle-CssClass="text-center" SortExpression="TenSach" />
            <asp:ImageField DataImageUrlFormatString="Uploads/{0}" ControlStyle-Width="100px" DataImageUrlField="Hinh" HeaderText="Hình" SortExpression="Hinh" >
<ControlStyle Width="100%"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="MoTa" HeaderText="Mô tả" ControlStyle-Width="50px" SortExpression="MoTa" >
            <ControlStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="GiaBan" DataFormatString="{0:#,##0} đồng" HeaderText="Giá" SortExpression="GiaBan" />
            <asp:BoundField DataField="SoLuongTon" HeaderText="Số Lượng Tồn" SortExpression="SoLuongTon" />
            <asp:TemplateField HeaderText="Tác Vụ">
                <ItemTemplate>
                    <asp:Button ID="btn" CssClass="btn btn-success" Text="Xóa" CommandName="Delete" runat="server" />
                    <asp:Button ID="btnadd" CssClass="btn btn-success" Text="Cart" OnClick="btnadd_Click" CommandArgument='<%# Eval("MaSach") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:DataBookConnectionString %>"
        DeleteCommand="DELETE FROM [Sach] WHERE [MaSach] = @MaSach"
        InsertCommand="INSERT INTO [Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (@MaSach, @TenSach, @GiaBan, @MoTa, @AnhBia, @NgayCapNhat, @SoLuongTon, @MaNSB, @MaChuDe, @MaTacGia, @Hinh)"
        SelectCommand="SELECT * FROM [Sach] WHERE ([TenSach] LIKE '%' + @TenSach + '%')"
        UpdateCommand="UPDATE [Sach] SET [TenSach] = @TenSach, [GiaBan] = @GiaBan, [MoTa] = @MoTa, [AnhBia] = @AnhBia, [NgayCapNhat] = @NgayCapNhat, [SoLuongTon] = @SoLuongTon, [MaNSB] = @MaNSB, [MaChuDe] = @MaChuDe, [MaTacGia] = @MaTacGia, [Hinh] = @Hinh WHERE [MaSach] = @MaSach">
        <DeleteParameters>
            <asp:Parameter Name="MaSach" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSach" Type="Int32" />
            <asp:Parameter Name="TenSach" Type="String" />
            <asp:Parameter Name="GiaBan" Type="Int32" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="NgayCapNhat" Type="String" />
            <asp:Parameter Name="SoLuongTon" Type="Int32" />
            <asp:Parameter Name="MaNSB" Type="Int32" />
            <asp:Parameter Name="MaChuDe" Type="Int32" />
            <asp:Parameter Name="MaTacGia" Type="Int32" />
            <asp:Parameter Name="Hinh" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTenSach" Name="TenSach" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSach" Type="String" />
            <asp:Parameter Name="GiaBan" Type="Int32" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="NgayCapNhat" Type="String" />
            <asp:Parameter Name="SoLuongTon" Type="Int32" />
            <asp:Parameter Name="MaNSB" Type="Int32" />
            <asp:Parameter Name="MaChuDe" Type="Int32" />
            <asp:Parameter Name="MaTacGia" Type="Int32" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="MaSach" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
