<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Create_Account.aspx.cs" Inherits="Create_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        
       
        <div class="row row-col-gap" data-gutter="60">
             <div class="col-md-3"></div>
            <div class="col-md-6">
                <header class="page-header">
            <h1 class="page-title">Create Account</h1>
        </header>
                 <p class="checkout-login-text">Register to your Experiencewala profile to find more products.</p>
                <h3 class="widget-title">User Details</h3>
                <form>
                    <div class="form-group">
                        <label>Username</label>
                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server" />
                    </div>
                    
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="txtpassword" TextMode="Password" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <label>Phone Number</label>
                        <asp:TextBox ID="txtphone" CssClass="form-control" runat="server" />
                    </div>

                    <asp:Button ID="btnaccount" CssClass="btn btn-primary" Text="Create Account" runat="server" OnClick="btnaccount_Click" />

                </form>
            </div>
             <div class="col-md-3"></div>
        </div>
    </div>

</asp:Content>

