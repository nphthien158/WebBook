<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="xemsach.aspx.cs" Inherits="WebBook.xemsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <section id="featured-books">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div class="section-header align-center">
                        <div class="title">
                            <span>Some quality items</span>
                        </div>
                        <h2 class="section-title">Sách Theo Chủ Đề</h2>
                        <asp:DropDownList ID="ddlchude" runat="server" DataSourceID="dsmachude" DataTextField="TenChuDe" AutoPostBack="true" DataValueField="MaChuDe">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="dsmachude" runat="server" ConnectionString="<%$ ConnectionStrings:DataBookConnectionString %>" SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
                    </div>

                    <div class="product-list" data-aos="fade-up">
                        <div class="row">

                            <asp:Repeater ID="rptSach" DataSourceID="dsSach" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-3">
                                        <figure class="product-style">
                                            <img src="<%# Eval("Hinh", "Uploads/{0}") %>" alt="Books" class="product-item"/>
                                            
                                            <a href='<%# Eval("MaSach","XemChiTiet.aspx?MaSach={0}") %>''> 
                                                <button style="border-radius" type="button" class="add-to-cart" data-product-tile="add-to-cart">Xem Chi Tiết</button></a>
                                            <figcaption>
                                                <h3><%# Eval("TenSach") %></h3>
                                                <p><%# Eval("AnhBia")%></p>
                                                <div class="item-price"><%# Eval("GiaBan", "{0:#,##0} Đ")%></div>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="dsSach" runat="server" ConnectionString="<%$ ConnectionStrings:DataBookConnectionString %>" SelectCommand="SELECT * FROM [Sach] WHERE ([MaChuDe] = @MaChuDe)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlchude" Name="MaChuDe" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                        <!--ft-books-slider-->
                    </div>
                    <!--grid-->


                </div>
                <!--inner-content-->
            </div>

            <div class="row">
                <div class="col-md-12">

                    <div class="btn-wrap align-right">
                        <a href="#" class="btn-accent-arrow">View all products <i class="icon icon-ns-arrow-right"></i></a>
                    </div>

                </div>
            </div>
        </div>
    </section>

</asp:Content>
