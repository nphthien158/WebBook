<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebBook._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <section id="billboard">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <button class="prev slick-arrow">
                        <i class="icon icon-arrow-left"></i>
                    </button>

                    <div class="main-slider pattern-overlay">
                        <div class="slider-item">
                            <div class="banner-content">
                                <h2 class="banner-title">Life of the Wild</h2>
                                <p>Lòng dũng cảm là một trong những đức tính vô cùng cần thiết và đáng quý ở mỗi con người. Dù ở nơi đâu khi làm bất cứ việc gì con người cũng đều cần đến lòng dũng cảm. Dũng cảm là không sợ nguy hiểm, khó khăn. Người có lòng dũng cảm là người không run sợ, không hèn nhát, dám đứng lên đấu tranh chống lại cái xấu, cái ác, các thế lực tàn bạo để bảo vệ công lí, chính nghĩa. Dũng cảm là sẵn sàng hy sinh bản thân mình để cứu giúp những người khó khăn hoạn nạn. Trong chiến tranh, nhờ những tấm gương dũng cảm như Võ Thị Sáu, Nguyễn Văn Trỗi, La Văn Cầu… và bao tấm gương thương binh, liệt sĩ mà đất nước mới có được nền độc lập.</p>
                                <div class="btn-wrap">
                                    <a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i class="icon icon-ns-arrow-right"></i></a>
                                </div>
                            </div>
                            <!--banner-content-->
                            <img src="images/main-banner1.jpg" alt="banner" class="banner-image">
                        </div>
                        <!--slider-item-->

                        <div class="slider-item">
                            <div class="banner-content">
                                <h2 class="banner-title">Birds gonna be Happy</h2>
                                <p>“Trung thực là “chương đầu tiên” trong cuốn sách về sự khôn ngoan” - Thomas Jefferson. Quả đúng như vậy, trung thực là một đức tính quý báu mà bất cứ ai trong cuộc đời cũng đều mong muốn có cho mình. Vậy trung thực là gì? Đó là lối sống ngay thẳng, không bao giờ nói sai sự thật, luôn đứng về lẽ phải, bảo vệ công bằng; trung thực là không dối trá, sống đúng lương tâm mình.</p>
                                <div class="btn-wrap">
                                    <a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i class="icon icon-ns-arrow-right"></i></a>
                                </div>
                            </div>
                            <!--banner-content-->
                            <img src="images/main-banner2.jpg" alt="banner" class="banner-image">
                        </div>
                        <!--slider-item-->

                    </div>
                    <!--slider-->

                   <button class="next slick-arrow">
                        <i class="icon icon-arrow-right"></i>
                    </button>

                </div>
            </div>
        </div>

    </section>

</asp:Content>
