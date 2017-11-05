<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br /><br />
       <div id="container">
           
                <h1>Don't Just Dream, Do!</h1>
               <br />
               <p>Together we can change the world</p>
          
       </div>
   
           <asp:Button Text="My Work" ID="Button2" a="My Work Button" CssClass="simpletransit" runat="server" OnClick="Button2_Click" />
 
</asp:Content>

