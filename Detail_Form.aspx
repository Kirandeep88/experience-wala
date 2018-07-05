<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Detail_Form.aspx.cs" Inherits="Detail_Form" %>

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
                <h1 class="page-title">Checkout Order</h1>
            </header>
        <p class="checkout-login-text">Sign in or Register to your ExperienceWala profile to faster order checkout.</p>
         
            <div class="row row-col-gap" data-gutter="60">
                <div class="col-md-4">
                    <h3 class="widget-title">Order Info</h3>
                    <div class="box">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>QTY</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><%=prod.Product_Dec %></td>
                                    <td><%=prod.Product_Unit %></td>
                                    <td><%=prod. %></td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
              
                <div class="col-md-4">
                    <h3 class="widget-title">Billng Details</h3>
                    <form  >
                        <div class="form-group">
                            <label>First &amp; Last Name</label>
                            <asp:TextBox ID="txtname" CssClass="form-control" runat="server" />  
                        </div>
                        <div class="form-group">
                            <label>E-mail</label>
                            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" />  
                        </div>
                        <div class="form-group">
                            <label>Phone Number</label>
                           <asp:TextBox Id="txtphone" CssClass="form-control"  runat="server" />   
                        </div>
                        
                        <div class="form-group">
                            <label>Country</label>
                           <asp:TextBox ID="txtcountry" CssClass="form-control" runat="server" />   
                        </div>
                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>City</label>
                                   <asp:TextBox ID="txtcity" CssClass="form-control" runat="server" />   
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Zip/Postal</label>
                                   <asp:TextBox ID="txtzip" CssClass="form-control" runat="server" />   
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox id="txtaddress" CssClass="form-control" runat="server" />  
                        </div>
                        <asp:Button ID="btnsubmit" CssClass="btn btn-primary" Text="Submit" runat="server" OnClick="btnsubmit_Click" />
                        
                    </form>
                </div>
                <div class="col-md-4">
                    <label>
                    <asp:RadioButton ID="radiobtn" Text=""  runat="server" />Payment with Payumoney
                   </label>
                    <p>Important: You will be redirected to Payumoney website to securely complete your payment.</p><a class="btn btn-primary">Pay With Payumoney</a>
                </div>
            </div>
        </div>

</asp:Content>

