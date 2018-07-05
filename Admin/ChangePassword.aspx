<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <header class="page-header">
    <h2>Change Password</h2>

    <div class="right-wrapper pull-right">
        <ol class="breadcrumbs">
            <li>
                <a href="#">
                    <i class="fa fa-copy"></i>
                </a>
            </li>
            <li>
                <span>
                    <a href="../Country/index">
                        Change Password
                    </a>
                </span>
            </li>
        </ol>
        <a class="sidebar-right-toggle"><i class="fa fa-chevron-left"></i></a>
    </div>

</header>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
              <%
                    if (Request.QueryString["msg"]!=null)
                    {
                        string msg = Request.QueryString["msg"];
                        if (msg=="pnotmatch")
                        {
                            
                     %>
                <div class="alert alert-success">
                    Wrong Credential
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                </div>
            <%}
                        else if(msg=="ok")
                        {
                        
               %>

            <div class="alert alert-success">
                    Password Change Successfully
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                </div>
            <%} %>
                <%} %>
            <section class="panel">
                <header class="panel-heading">
                    <div class="panel-actions">
                        <a href="#" class="fa fa-caret-down"></a>
                        <a href="#" class="fa fa-times"></a>
                    </div>

                    <h2 class="panel-title">Change Password</h2>
                </header>
                <div class="panel-body">
                    
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Enter Your Old Password: </label>
                        <div class="col-sm-8">
                            <%--<asp:TextBox ID="txtoldpass" runat="server" />--%>
                            <asp:TextBox ID="txtoldpass" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />  
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Enter Your New Password: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtnewpass" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />  
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Confirm Your Password: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtconfirmpass" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />  
                            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtnewpass" ValidationGroup="abc" ForeColor="Red" ControlToValidate="txtconfirmpass" Display="Dynamic" runat="server" ErrorMessage="Password Mismatch"></asp:CompareValidator>
                        </div>
                    </div>

                </div>
                <footer class="panel-footer">
                    <asp:Button CssClass="btn btn-primary" ValidationGroup="abc" id="btnsubmit" Text="Submit" runat="server" />
                    
                    <button type="reset" class="btn btn-default">Reset</button>
                </footer>
            </section>

        </div>
    </div>

</asp:Content>