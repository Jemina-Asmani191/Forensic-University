<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Forensic_Infrastructural_Facilities.aspx.cs" Inherits="ADMIN_Default" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<br />
<br />
<br />

<form id="visionmission" Runat="server" >
              <div class="card ">
                  <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Height="400px"></CKEditor:CKEditorControl>
    <div class="card-footer text-right">
    <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary" onclick="btn_submit_Click" 
            />
        </div>
            </div>
<br />
<br />
<br />

</form>
 
  


</asp:Content>

