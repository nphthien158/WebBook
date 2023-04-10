<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="XemChiTiet.aspx.cs" Inherits="WebBook.XemChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <section id="best-selling" class="leaf-pattern-overlay">
        <div class="corner-pattern-overlay"></div>
        <div class="container">
            <div class="row">

                <div class="col-md-8 col-md-offset-2">

                    <div class="row">
                      <asp:Label ID="lbtieude" runat="server" Text=""></asp:Label>

                        <asp:Repeater ID="rpChitiet" DataSourceID="dsSachchitiet" runat="server">
                            <ItemTemplate>


                                <div class="col-md-6">
                                    <figure class="products-thumb">
                                        <img src="<%# Eval("Hinh", "Uploads/{0}") %>" alt="book" class="single-image" style="width: 100% ;height:100%">
                                    </figure>
                                </div>

                                <div class="col-md-6">
                                    <div class="product-entry">
                                        <h2 class="section-title divider"><%# Eval("TenSach") %></h2>

                                        <div class="products-content">
                                            <div class="author-name">By Timbur Hood</div>
                                            <h3 class="item-title"><%# Eval("NgayCapNhat") %></h3>
                                            <p><%# Eval("MoTa") %></p>
                                            <div class="item-price"><%# Eval("GiaBan", "{0:#,##0} VNĐ")%></div>
                                            <div class="btn-wrap">
                                                <asp:Button ID="btn" runat="server" class="btn btn-info" Text="Thêm vào giỏ" CommandArgument='<%# Eval("MaSach") %>' OnClick="btn_Click" />

                                                <%--<a href="#" class="btn-accent-arrow">Add to cart <i class="icon icon-ns-arrow-right"></i></a>--%>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- / row -->

                </div>

            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="dsSachchitiet" runat="server" ConnectionString="<%$ ConnectionStrings:DataBookConnectionString %>" SelectCommand="SELECT * FROM [Sach] WHERE ([MaSach] = @MaSach)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSach" QueryStringField="MaSach" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
