<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Show_Order.aspx.cs" Inherits="Admin_Show_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <header class="page-header">
        <h2>Orders</h2>

        <div class="right-wrapper pull-right">
            <ol class="breadcrumbs">
                <li>
                    <a href="index.html">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li><span>Pages</span></li>
                <li><span>Order Details</span></li>
            </ol>

            <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
        </div>
    </header>
    <div class="row">
        <div class="col-md-12">

            <section class="panel">
                <header class="panel-heading">
                    <div class="panel-actions">
                        <a href="#" class="fa fa-caret-down"></a>
                        <a href="#" class="fa fa-times"></a>
                    </div>
                </header>
                <div class="panel-body">
                    <table class="table table-bordered table-striped mb-none" id="datatable-default">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone Number</th>
                                <th>Country</th>
                                <th>City</th>
                                <th>Zip/Postal</th>
                                <th>Address</th>

                                <th class="hidden-phone">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                GadgetitemsEntities db = new GadgetitemsEntities();

                                List<Tb_Order> lst = db.Tb_Order.ToList();

                                foreach (var item in lst)
                                {    %>


                            <tr>
                                <td><%=item.Name%></td>
                                <td><%=item.Email%></td>
                                <td><%=item.Phone_Number%></td>
                                <td><%=item.Country%></td>
                                <td><%=item.City%></td>
                                <td><%=item.Zip_Code%></td>
                                <td><%=item.Address %></td>
                                <td class="center hidden-phone">
                                    <a href="#">
                                        <i class="fa fa-pencil"></i>
                                    </a>|
                                    
                    <a href="#" onclick="getid();" data-toggle="modal" data-target="#modalBootstrap">
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


</asp:Content>

