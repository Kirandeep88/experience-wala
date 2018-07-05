<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ProdDetail.aspx.cs" Inherits="ProdDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <%
        GadgetitemsEntities db = new GadgetitemsEntities();

        if (Request.QueryString["id"] != null)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            Tb_Product prod = db.Tb_Product.Where(z => z.Id == id).SingleOrDefault();
             
    %>
        <div class="container">
            <header class="page-header">
                <ol class="breadcrumb page-breadcrumb">
                    <li><a href="#">Home</a>
                    </li>
                    <li><a href="#">Our Product</a>
                    </li>
                    <li><a href="#">Product Details</a>
                    </li>
               
                </ol>
            </header>
            <div class="row">
                <div class="col-md-6">
                    <div class="product-page-product-wrap jqzoom-stage jqzoom-stage-lg">
                        <div class="clearfix">
                            <a href="Upload/Product/<%=prod.Product_Image %>" id="jqzoom" data-rel="gal-1">
                                <img src="Upload/Product/<%=prod.Product_Image %>" alt="Image Alternative text" title="Image Title" />
                            </a>
                        </div>
                    </div>
               <%--     <ul class="jqzoom-list">
                        <li>
                            <a class="zoomThumbActive" href="javascript:void(0)" data-rel="{gallery:'gal-1', smallimage: 'img/test_product_page/verabag/1.jpg', largeimage: 'img/test_product_page/verabag/1-b.jpg'}">
                                <img src="Upload/Product/<%=prod.Product_Image1 %>" alt="Image Alternative text" title="Image Title" />
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-rel="{gallery:'gal-1', smallimage: 'img/test_product_page/verabag/2.jpg', largeimage: 'img/test_product_page/verabag/2-b.jpg'}">
                                <img src="img/test_product_page/verabag/2-s.jpg" alt="Image Alternative text" title="Image Title" />
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-rel="{gallery:'gal-1', smallimage: 'img/test_product_page/verabag/3.jpg', largeimage: 'img/test_product_page/verabag/3-b.jpg'}">
                                <img src="img/test_product_page/verabag/3-s.jpg" alt="Image Alternative text" title="Image Title" />
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-rel="{gallery:'gal-1', smallimage: 'img/test_product_page/verabag/4.jpg', largeimage: 'img/test_product_page/verabag/4-b.jpg'}">
                                <img src="img/test_product_page/verabag/4-s.jpg" alt="Image Alternative text" title="Image Title" />
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-rel="{gallery:'gal-1', smallimage: 'img/test_product_page/verabag/5.jpg', largeimage: 'img/test_product_page/verabag/5-b.jpg'}">
                                <img src="img/test_product_page/verabag/5-s.jpg" alt="Image Alternative text" title="Image Title" />
                            </a>
                        </li>
                    </ul>--%>
                </div>
                <div class="col-md-6">
                    <div class="_box-highlight">
                        <ul class="product-page-product-rating">
                            <li class="rated"><i class="fa fa-star"></i>
                            </li>
                            <li class="rated"><i class="fa fa-star"></i>
                            </li>
                            <li class="rated"><i class="fa fa-star"></i>
                            </li>
                            <li class="rated"><i class="fa fa-star"></i>
                            </li>
                            <li class="rated"><i class="fa fa-star"></i>
                            </li>
                        </ul>
                        <p class="product-page-product-rating-sign"><a href="#">238 customer reviews</a>
                        </p>
                        <h1><%=prod.Product_name %></h1>
                        <p class="product-page-price">Rs <%=prod.Product_Price %></p>
                        <p class="text-muted text-sm">Free Shipping</p>
                        <p class="product-page-desc-lg"><%=prod.Product_Dec %></p>
                        
                        <ul class="product-page-actions-list">
                            <li class="col-md-3">
                              <asp:TextBox ID="txtqu" placeholder="quantity" CssClass="form-control " runat="server" />    
                            </li>
                            <li>
                                <a class="btn btn-lg btn-default" href="Detail_Form.aspx?id=<%=prod.Id %>">Buy Now</a>
                            </li>
                            <li><a class="btn btn-lg btn-default" href="#"><i class="fa fa-star"></i>Wishlist</a>
                            </li>
                        </ul>
                        <div class="gap gap-small"></div>
                    </div>
                </div>
            </div>
            <div class="gap"></div>

            <div class="tabbable product-tabs">
                <ul class="nav nav-tabs" id="myTab">
                    <li class="active"><a href="#tab-1" data-toggle="tab">Description</a>
                    </li>
                    <li><a href="#tab-3" data-toggle="tab">Rating and Reviews</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab-1">
                 
                        <p><%=prod.Product_Dec %></p>
                    </div>
                    
                    <div class="tab-pane fade" id="tab-3">
                        <div class="row">
                            <div class="col-md-8">
                                <article class="product-review">
                                    <div class="product-review-author">
                                        <img class="product-review-author-img" src="img/amaze_70x70.jpg" alt="Image Alternative text" title="Image Title" />
                                    </div>
                                    <div class="product-review-content-full">
                                        <h5 class="product-review-title">Terrific Buy!</h5>
                                        <ul class="product-page-product-rating">
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                        </ul>
                                        <p class="product-review-meta">by Leah Kerr on 08/14/2015</p>
                                        <p class="product-review-body">Natoque pretium morbi habitasse nec ultricies sodales ligula nullam diam aliquet etiam scelerisque platea vestibulum sagittis porttitor dictumst viverra libero justo tempus</p>
                                        <p class="text-success"><strong><i class="fa fa-check"></i> I would recommend this to a friend!</strong>
                                        </p>
                                        <ul class="list-inline product-review-actions">
                                            <li><a href="#"><i class="fa fa-flag"></i> Flag this review</a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-comment"></i> Comment review</a>
                                            </li>
                                        </ul>
                                    </div>
                                </article>
                                <article class="product-review">
                                    <div class="product-review-author">
                                        <img class="product-review-author-img" src="img/chiara_70x70.jpg" alt="Image Alternative text" title="Image Title" />
                                    </div>
                                    <div class="product-review-content-full">
                                        <h5 class="product-review-title">Too Big. Unusable.</h5>
                                        <ul class="product-page-product-rating">
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                        </ul>
                                        <p class="product-review-meta">by Cyndy Naquin on 08/14/2015</p>
                                        <p class="product-review-body">Risus elementum quisque inceptos morbi tempus varius cras dis placerat sapien tristique dictum purus molestie mi luctus parturient tempor hendrerit mus</p>
                                        <p class="text-danger"><strong><i class="fa fa-close"></i> No, I would not recommend this to a friend.</strong>
                                        </p>
                                        <ul class="list-inline product-review-actions">
                                            <li><a href="#"><i class="fa fa-flag"></i> Flag this review</a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-comment"></i> Comment review</a>
                                            </li>
                                        </ul>
                                    </div>
                                </article>
                                <article class="product-review">
                                    <div class="product-review-author">
                                        <img class="product-review-author-img" src="img/bubbles_70x70.jpg" alt="Image Alternative text" title="Image Title" />
                                    </div>
                                    <div class="product-review-content-full">
                                        <h5 class="product-review-title">Worth it</h5>
                                        <ul class="product-page-product-rating">
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                            <li class="rated"><i class="fa fa-star"></i>
                                            </li>
                                        </ul>
                                        <p class="product-review-meta">by Carol Blevins on 08/14/2015</p>
                                        <p class="product-review-body">Placerat vel eu quis rhoncus sociosqu lobortis molestie lacinia metus curabitur nibh iaculis hac scelerisque aliquam sodales dictum imperdiet libero mollis</p>
                                        <p class="text-success"><strong><i class="fa fa-check"></i> I would recommend this to a friend!</strong>
                                        </p>
                                        <ul class="list-inline product-review-actions">
                                            <li><a href="#"><i class="fa fa-flag"></i> Flag this review</a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-comment"></i> Comment review</a>
                                            </li>
                                        </ul>
                                    </div>
                                </article>
                            </div>
                            <div class="col-md-4">
                                <h3 class="product-tab-rating-title">Overall Customer Rating:</h3>
                                <ul class="product-page-product-rating product-rating-big">
                                    <li class="rated"><i class="fa fa-star"></i>
                                    </li>
                                    <li class="rated"><i class="fa fa-star"></i>
                                    </li>
                                    <li class="rated"><i class="fa fa-star"></i>
                                    </li>
                                    <li class="rated"><i class="fa fa-star"></i>
                                    </li>
                                    <li class="rated"><i class="fa fa-star"></i>
                                    </li>
                                    <li class="count">4.9</li>
                                </ul><small>238 customer reviews</small>
                                <p><strong>98%</strong> of reviewers would recommend this product</p><a class="btn btn-primary" href="#">Write a Review</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <p class="category-pagination-sign">238 customer reviews found. Showing 1 - 5</p>
                            </div>
                            <div class="col-md-6">
                                <nav>
                                    <ul class="pagination category-pagination pull-right">
                                        <li class="active"><a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a>
                                        </li>
                                        <li><a href="#">3</a>
                                        </li>
                                        <li><a href="#">4</a>
                                        </li>
                                        <li><a href="#">5</a>
                                        </li>
                                        <li class="last"><a href="#"><i class="fa fa-long-arrow-right"></i></a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gap"></div>
            <h3 class="widget-title">You Might Also Like</h3>
            <div class="row" data-gutter="15">

                      <%
                GadgetitemsEntities dbs = new GadgetitemsEntities();

                List<Tb_Product> lsts = dbs.Tb_Product.ToList();

                foreach (var itemsss in lsts)
                {%>
                <div class="col-md-3">
                    <div class="product product-sm-left ">
                        <ul class="product-labels"></ul>
                        <div class="product-img-wrap">
                            <img class="product-img" src="Upload/Product/<%=itemsss.Product_Image %>" alt="Image Alternative text" title="Image Title" />
                        </div>
                        <a class="product-link" href="ProdDetail.aspx?id=<%=itemsss.Id %>"></a>
                        <div class="product-caption">
                            
                            <h5 class="product-caption-title"><%=itemsss.Product_name %></h5>
                            <div class="product-caption-price"><span class="product-caption-price-new"><%=itemsss.Product_Price %></span>
                            </div>
                            <ul class="product-caption-feature-list">
                            </ul>
                        </div>
                    </div>
                </div>

                <%} %>

            </div>
        
        </div>
        <div class="gap"></div>


    <%} %>
</asp:Content>

