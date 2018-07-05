<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="Admin_AddProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <header class="page-header">
        <h2>Product</h2>
        <div class="right-wrapper pull-right">
            <ol class="breadcrumbs">
                <li>
                    <a href="#">
                        <i class="fa fa-copy"></i>
                    </a>
                </li>
                <li>
                    <span>
                        <a href="../Country/index">Category
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

            <section class="panel">
                <header class="panel-heading">
                    <div class="panel-actions">
                        <a href="#" class="fa fa-caret-down"></a>
                        <a href="#" class="fa fa-times"></a>
                    </div>

                    <h2 class="panel-title">Add Product</h2>
                </header>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Product Name: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtproductname" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Select Category: </label>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="drpcat" ClientIDMode="Static" required="true" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">Description: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtdescription" ClientIDMode="Static" TextMode="MultiLine" CssClass="form-control" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">Upload Image: </label>
                        <div class="col-sm-8">
                            <asp:FileUpload ID="FileUpload1" ClientIDMode="Static" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Upload Image: </label>
                        <div class="col-sm-8">
                            <asp:FileUpload ID="FileUpload2" ClientIDMode="Static" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Upload Image: </label>
                        <div class="col-sm-8">
                            <asp:FileUpload ID="FileUpload3" ClientIDMode="Static" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">Upload Image: </label>
                        <div class="col-sm-8">
                            <asp:FileUpload ID="FileUpload4" ClientIDMode="Static" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">Upload Image: </label>
                        <div class="col-sm-8">
                            <asp:FileUpload ID="FileUpload5" ClientIDMode="Static" runat="server" />
                        </div>
                    </div>


                          <div class="form-group">
                        <label class="col-sm-4 control-label">Price: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtprice" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>

                    

                          <div class="form-group">
                        <label class="col-sm-4 control-label">Unit: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtunit" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>

                      <div class="form-group">
                        <label class="col-sm-4 control-label">Our Latest Product: </label>
                        <div class="col-sm-8">
                            <asp:CheckBox Text="" ClientIDMode="Static" ID="chklatest" runat="server" />
                        </div>
                    </div>

                      <div class="form-group">
                        <label class="col-sm-4 control-label">Our Best Product: </label>
                        <div class="col-sm-8">
                            <asp:CheckBox Text="" ClientIDMode="Static" ID="chkbest" runat="server" />
                        </div>
                    </div>

                      <div class="form-group">
                        <label class="col-sm-4 control-label">HomePage: </label>
                        <div class="col-sm-8">
                            <asp:CheckBox Text="" ClientIDMode="Static" ID="chkhome" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">HomePage 2: </label>
                        <div class="col-sm-8">
                            <asp:CheckBox Text="" ClientIDMode="Static" ID="chkhome2" runat="server" />
                        </div>
                    </div>

                    
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Status: </label>
                        <div class="col-sm-8">
                            <asp:CheckBox Text="" ClientIDMode="Static" ID="chkstatus" runat="server" />
                        </div>
                    </div>
                </div>
                <footer class="panel-footer">
                    <asp:Button CssClass="btn btn-primary" ID="btnsubmit" Text="Submit" runat="server" OnClick="btnsubmit_Click" />

                    <button type="reset" class="btn btn-default">Reset</button>
                </footer>
            </section>

        </div>
    </div>
</asp:Content>
