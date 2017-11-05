    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <center>
    <div class="Welcome">
        
       <p> 
<asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="red">Welcome to my website.</asp:Label>
      </p>
        <br /><img src="http://atlas.itds.unt.edu/Nguyen/images/unt_spc2.jpg" alt="UNT Campus" style="width:550px;height:350px;">

        
    
    <br /><br /><br />
    
    </div>
        </center>
</asp:Content>

