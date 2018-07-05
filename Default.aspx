<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
  
    <div class="global-wrapper clearfix" id="global-wrapper">

    <div class="owl-carousel owl-loaded owl-nav-dots-inner" data-options='{"items":1,"loop":true}'>
                      <%
        GadgetitemsEntities dbssss = new GadgetitemsEntities();
        List<Tb_banners> banners = dbssss.Tb_banners.ToList();
        foreach (var itemssss in banners)
        {
        %>
            <div class="owl-item">
                <div class="slider-item">
                    <img src="Upload_Banners/<%=itemssss.Image1%>" />
                    <div class="container">
                        <div class="slider-item-inner">
                            <div class="slider-item-caption-left slider-item-caption-white">
                                <%--        <h4 class="slider-item-caption-title">Save up to $150 on Your Next Laptop</h4>
                                <p class="slider-item-caption-desc">I'm Not Gonna Pay A Lot For This Laptop.</p>
                                <a class="btn btn-lg btn-ghost btn-white" href="#">Shop Now</a>--%>
                            </div>
                            <%--<img class="slider-item-img-right" src="img/test_slider/slide01.gif" alt="Image Alternative text" title="Image Title" style="top: 60%; width: 56%;" />--%>
                            
                        </div>
                    </div>
                  
                </div>
                              </div>
            
        
               <%} %>
        </div>
          
        <div class="gap"></div>
        <div class="container">

            <div class="gap"></div>
            <h3 class="widget-title-lg">Our Latest Products</h3>
              <div class="row" data-gutter="15">
            <%
                GadgetitemsEntities db = new GadgetitemsEntities();

                List<Tb_Product> lst = db.Tb_Product.Where(z => z.Our_latest_product == true && z.Status == true).ToList();

                foreach (var item in lst)
                {%>
            <div class="col-md-4">
                <div class="product ">
                    <ul class="product-labels">
                        <li>hot</li>
                    </ul>


                    <div class="product-img-wrap">


                        <img class="product-img-primary" src="Upload/Product/<%=item.Product_Image%>" alt="Image Alternative text" title="Image Title" />
                        <img class="product-img-alt" src="Upload/Product/<%=item.Product_Image1%>" alt="Image Alternative text" title="Image Title" />

                    </div>

                    <a class="product-link" href="ProdDetail.aspx?id=<%=item.Id %>"></a>
                    <div class="product-caption">

                        <h5 class="product-caption-title"><%=item.Product_name %></h5>
                        <div class="product-caption-price">
                            <span class="product-caption-price-new">Rs.<%=item.Product_Price %></span>
                        </div>
                        <ul class="product-caption-feature-list">
                            <li>Free Shipping</li>
                        </ul>
                    </div>
                </div>
                </div>
            <%} %>
        </div>
         <div class="gap"></div>

        
        <div class="row" data-gutter="15">

            <%
                GadgetitemsEntities dbs = new GadgetitemsEntities();

                List<Tb_Product> lsts = db.Tb_Product.Where(z => z.HomePage == true && z.Status == true).ToList();

                foreach (var items in lsts)
                {%>

            <div class="col-md-3">
                <div class="product product-sm-left ">
                    <ul class="product-labels"></ul>
                    <div class="product-img-wrap">
                        <img class="product-img" src="Upload/Product/<%=items.Product_Image%>" alt="Image Alternative text" title="Image Title" />
                    </div>
                    <a class="product-link" href="ProdDetail.aspx?id=<%=items.Id %>"></a>
                    <div class="product-caption">
                        <ul class="product-caption-rating">
                            <li class="rated"><i class="fa fa-star"></i>
                            </li>
                            <li class="rated"><i class="fa fa-star"></i>
                            </li>
                            <li class="rated"><i class="fa fa-star"></i>
                            </li>
                            <li><i class="fa fa-star"></i>
                            </li>
                            <li><i class="fa fa-star"></i>
                            </li>
                        </ul>
                        <h5 class="product-caption-title"><%=items.Product_name %></h5>
                        <div class="product-caption-price">
                          <span class="product-caption-price-new">Rs.<%=items.Product_Price %></span>
                        </div>
                        <ul class="product-caption-feature-list">
                            <li>Free Shipping</li>
                        </ul>
                    </div>
                </div>
            </div>

            <%} %>
        </div>



        <div class="gap"></div>
        <h3 class="widget-title-lg">Our Best Product</h3>
        <div class="row" data-gutter="15">

            <%
                GadgetitemsEntities dbss = new GadgetitemsEntities();

                List<Tb_Product> lstss = db.Tb_Product.Where(z => z.OurBestProduct == true && z.Status == true).ToList();

                foreach (var itemss in lst)
                {%>
            <div class="col-md-4">
                <div class="product ">
                    <ul class="product-labels">
                        <li>hot</li>
                    </ul>
                    <div class="product-img-wrap">
                        <img class="product-img-primary" src="Upload/Product/<%=itemss.Product_Image%>" alt="Image Alternative text" title="Image Title" />
                        <img class="product-img-alt" src="Upload/Product/<%=itemss.Product_Image2 %>" alt="Image Alternative text" title="Image Title" />
                    </div>
                    <a class="product-link" href="ProdDetail.aspx?id=<%=itemss.Id %>"></a>
                    <div class="product-caption">
                        <h5 class="product-caption-title"><%=itemss.Product_name %></h5>
                        <div class="product-caption-price">
                            <span class="product-caption-price-new">Rs <%=itemss.Product_Price %></span>
                        </div>
                        <ul class="product-caption-feature-list">
                        </ul>
                    </div>
                </div>
            </div>

            <%} %>
        </div>
        <div class="gap"></div>

        <div class="row" data-gutter="15">


            <%
                GadgetitemsEntities dbsss = new GadgetitemsEntities();

                List<Tb_Product> lstsss = db.Tb_Product.Where(z => z.HomePage2 == true && z.Status == true).ToList();

                foreach (var itemsss in lst)
                {%>

            <div class="col-md-3">

                <div class="product product-sm-left ">
                    <ul class="product-labels"></ul>
                    <div class="product-img-wrap">
                        <img class="product-img" src="Upload/Product/<%=itemsss.Product_Image %>" alt="Image Alternative text" title="Image Title" />
                    </div>
                    <a class="product-link" href="ProdDetail.aspx?id=<%=itemsss.Id %>"></a>
                    <div class="product-caption">

                        <h5 class="product-caption-title"><%=itemsss.HomePage2 %></h5>
                        <div class="product-caption-price">
                            <span class="product-caption-price-new"><%=itemsss.Product_name %></span>
                        </div>
                        <ul class="product-caption-feature-list">
                        </ul>
                    </div>
                </div>

            </div>
            <%} %>
        </div>

    </div>



    <div class="slider-item-sm" style="background-color: #E66514;">
        <div class="container">
            <div class="slider-item-inner">
                <div class="slider-item-caption-left slider-item-caption-white">
                    <h4 class="slider-item-caption-title">Time to Upgrade Your Security</h4>

                    <a class="btn btn-lg btn-ghost btn-white" href="#">Shop Now</a>
                </div>
                <%--       <img class="slider-item-img" src="img/test_slider/7.png" alt="Image Alternative text" title="Image Title" style="right: 0; bottom: 0; width: 22%;" />
                --%>
            </div>
        </div>
    </div>
    <div class="gap"></div>
    <div class="container">
        <h3 class="widget-title-lg">Shop by Category</h3>
        <div class="row row-sm-gap" data-gutter="15">
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/exterior.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Home & Garden</h5>
                    <p class="banner-category-desc">173 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/jewelry.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Jewelry</h5>
                    <p class="banner-category-desc">439 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/baby-room.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Toy & Kids</h5>
                    <p class="banner-category-desc">437 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/tech.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Electronics</h5>
                    <p class="banner-category-desc">599 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/clothes.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Clothes & Shoes</h5>
                    <p class="banner-category-desc">534 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/ball.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Sports</h5>
                    <p class="banner-category-desc">665 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/gamepad.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Entertaiment</h5>
                    <p class="banner-category-desc">341 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/signpost.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Travel</h5>
                    <p class="banner-category-desc">645 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/art.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Art & Design</h5>
                    <p class="banner-category-desc">453 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/garage.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Motors</h5>
                    <p class="banner-category-desc">251 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/tools.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Tools</h5>
                    <p class="banner-category-desc">458 products</p>
                </a>
            </div>
            <div class="col-md-2">
                <a class="banner-category" href="#">
                    <img class="banner-category-img" src="img/test_icon/metamorphose.png" alt="Image Alternative text" title="Image Title" />
                    <h5 class="banner-category-title">Hobbies & DIY</h5>
                    <p class="banner-category-desc">167 products</p>
                </a>
            </div>
        </div>
    </div>
    <div class="gap"></div>

        </div>
</asp:Content>

