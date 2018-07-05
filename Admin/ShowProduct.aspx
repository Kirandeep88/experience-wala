<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ShowProduct.aspx.cs" Inherits="Admin_ShowProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function getid(id) {
            $("#hdndel").val(id);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <header class="page-header">
        <h2>Products</h2>

        <div class="right-wrapper pull-right">
            <ol class="breadcrumbs">
                <li>
                    <a href="index.html">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li><span>Pages</span></li>
                <li><span>Products</span></li>
            </ol>

            <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
        </div>
    </header>


    <%
        if (Request.QueryString["msg"] != null)
        {
            string msg = Request.QueryString["msg"];

            if (msg == "Svd")
            {
    %>

    <div class="alert alert-success">
        Data is added succesfully
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    </div>

    <%}
            else if (msg == "upd")
            {
    %>
    <div class="alert alert-success">
        Data is Updated succesfully
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    </div>
    <%}
            else if (msg == "Dlt")
            {
    %>
    <div class="alert alert-success">
        Data is Deleted succesfully
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    </div>
    <%} %>


    <%} %>


    <div class="row">
        <div class="col-md-12">

            <section class="panel">
                <header class="panel-heading">
                    <div class="panel-actions">
                        <a href="#" class="fa fa-caret-down"></a>
                        <a href="#" class="fa fa-times"></a>
                    </div>

                    <a class="btn btn-primary" href="AddProducts.aspx">Add New</a>
                </header>
                <div class="panel-body">
                    <table class="table table-bordered table-striped mb-none" id="datatable-default">
                        <thead>
                            <tr>
                                <th>Cat Name</th>
                                <th>Product Name</th>
                                <th>Product Price</th>
                                <th>Unit</th>
                                <th>Description</th>
                                <th>Status</th>
                                <th class="hidden-phone">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                GadgetitemsEntities db = new GadgetitemsEntities();

                                List<Tb_Product> lst = db.Tb_Product.ToList();

                                foreach (var item in lst)
                                {    %>


                            <tr>
                                <td><%=item.Tb_Category.Cat_name%></td>
                                <td><%=item.Product_name%></td>
                                <td><%=item.Product_Price%></td>
                                <td><%=item.Product_Unit%></td>
                                <td><%=item.Product_Dec%></td>
                                <td><%=item.Status%></td>
                                <td class="center hidden-phone">
                                    <a href="/Admin/AddProducts.aspx?catid=<%=item.Id %>">
                                        <i class="fa fa-pencil"></i>
                                    </a>|
                                    
                    <a href="#" onclick="getid(<%=item.Id %>);" data-toggle="modal" data-target="#modalBootstrap">
                        <i class="fa fa-trash-o"></i>
                    </a>
                                </td>
                            </tr>
                            <%} %>
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </div>

    <div class="modal fade" id="modalBootstrap" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Are You Sure you want to delete?</h4>
                </div>
                <div class="modal-body">
                    <asp:HiddenField runat="server" ID="hdndel" ClientIDMode="Static" />
                    <p>After Deleting this u r not able to revcover the data again!</p>
                </div>
                <div class="modal-footer">
                    <asp:Button Text="Confirm" CssClass="btn btn-primary" ID="btnconfirm" ClientIDMode="Static" runat="server" OnClick="btnconfirm_Click" />
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

