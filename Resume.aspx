<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Resume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
<center>
   
        <object data="resume.pdf" type="application/pdf" width="750" height="490" internalinstanceid="3" title=""></object>
    </center>
</asp:Content>

