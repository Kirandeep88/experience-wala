<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Sign_In.aspx.cs" Inherits="Sign_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        
       
        <div class="row row-col-gap" data-gutter="60">
             <div class="col-md-3"></div>
            <div class="col-md-6">
                <header class="page-header">
            <h1 class="page-title">Sign In</h1>
        </header>
                 <p class="checkout-login-text"> Sign in to your Experiencewala Account</p>
                <h3 class="widget-title"></h3>
                <form>
                    <div class="form-group">
                        <label>Username Or Phone Number</label>
                        <asp:TextBox ID="txtusername" CssClass="form-control" runat="server" />
                    </div>
                    
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="txtpass" TextMode="Password" CssClass="form-control" runat="server" />
                    </div>
                    

                    <asp:Button ID="btnisignin" CssClass="btn btn-primary" Text="Sign In" runat="server" OnClick="btnisignin_Click" />

                </form>
            </div>
             <div class="col-md-3"></div>
        </div>
    </div>





</asp:Content>

