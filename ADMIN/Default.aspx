<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <HeaderTemplate>
    <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">DataTables.net</h4>
              </div>
              <div class="card-body">
                <div class="toolbar">
                  <!--        Here you can write extra buttons/actions for the toolbar              -->
                </div>
                <table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Office</th>
                      <th>Age</th>
                      <th class="disabled-sorting text-right">Actions</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Office</th>
                      <th>Age</th>
                      <th class="disabled-sorting text-right">Actions</th>
                    </tr>
                  </tfoot>
                  <tbody>
    </HeaderTemplate>
    <ItemTemplate>
    <tr>
                      <td><%#Eval("academic_date")%></td>
                      <td>System Architect</td>
                      <td>Edinburgh</td>
                      <td>61</td>
                      <td class="text-right">
                        <a href="#" class="btn btn-info btn-link btn-icon btn-sm like"><i class="fa fa-heart"></i></a>
                        <a href="#" class="btn btn-warning btn-link btn-icon btn-sm edit"><i class="fa fa-edit"></i></a>
                        <a href="#" class="btn btn-danger btn-link btn-icon btn-sm remove"><i class="fa fa-times"></i></a>
                      </td>
                    </tr>
    </ItemTemplate>


    <FooterTemplate>
    
     
                  </tbody>
                </table>
              </div>
              </div>
              </div>
              </div>
              </div>
    </FooterTemplate>
    </asp:Repeater>
                    
              
           
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UniversityConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Admin_Academic_Calendar]"></asp:SqlDataSource>
    </form>--%>
                    
 
 
              
           
</asp:Content>

