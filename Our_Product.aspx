<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Our_Product.aspx.cs" Inherits="Our_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
            <header class="page-header">
                <h1 class="page-title">Our Products</h1>
                <ol class="breadcrumb page-breadcrumb">
                    <li><a href="#">Home</a>
                    </li>
                    <li><a href="#">Our Products</a>
                    </li>
                    
                </ol>
                <ul class="category-selections clearfix">
                    <li>
                        <a class="fa fa-th-large category-selections-icon active" href="#"></a>
                    </li>
                    <li>
                        <a class="fa fa-th-list category-selections-icon" href="#"></a>
                    </li>
                    <li><span class="category-selections-sign">Sort by :</span>
                        <select class="category-selections-select">
                            <option >Newest First</option>
                            <option>Best Sellers</option>
                            <option>Trending Now</option>
                            <option>Best Raited</option>
                            <option>Price : Lowest First</option>
                            <option>Price : Highest First</option>
                            <option>Title : A - Z</option>
                            <option>Title : Z - A</option>
                        </select>
                    </li>
                    <li><span class="category-selections-sign">Items :</span>
                        <select class="category-selections-select">
                            <option>9 / page</option>
                            <option selected>12 / page</option>
                            <option>18 / page</option>
                            <option>All</option>
                        </select>
                    </li>
                </ul>
            </header>


            <div class="row">
        

                <div class="col-md-12">
                    <div class="row" data-gutter="15">
                
            <%
                GadgetitemsEntities db = new GadgetitemsEntities();

                List<Tb_Product> lst = db.Tb_Product.ToList();

                foreach (var itemsss in lst)
                {%>
                        
                                <div class="col-md-3">
                            <div class="product ">
                                <ul class="product-labels"></ul>
                                <div class="product-img-wrap">
                                    <img class="product-img-primary" src="Upload/Product/<%=itemsss.Product_Image %>" height="200px" width="250px" alt="Image Alternative text" title="Image Title" />
                                    <img class="product-img-alt" src="Upload/Product/<%=itemsss.Product_Image1 %>" height="200px" width="250px" alt="Image Alternative text" title="Image Title" />
                                </div>
                                <a class="product-link" href="ProdDetail.aspx?id=<%=itemsss.Id %>"></a>
                                <div class="product-caption">
                           
                                    <h5 class="product-caption-title"><%=itemsss.Product_name %></h5>
                                    <div class="product-caption-price"><span class="product-caption-price-new">Rs <%=itemsss.Product_Price %></span>
                                    </div>
                                    <ul class="product-caption-feature-list">
                                        <li><%=itemsss.Product_Unit %> Left</li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <%} %>
            </div>
                </div>
            </div>
        <br />
        </div>
</asp:Content>

