<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br /><br />
    <center> 

        <div class ="Signup">
        <br />

          <asp:TextBox ID="txtFName" runat="server"  placeholder="First name" CssClass="Signup_FName"></asp:TextBox>     
                      
                   <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="Please enter your First Name" ControlToValidate="txtFName" ForeColor="#FF6666"  Font-Names="Arial" Font-Size="Small" Font-Bold="True"></asp:RequiredFieldValidator>
                <br />
             

          <asp:TextBox ID="txtLName" runat="server"  placeholder="Last name" CssClass="Signup_LName" ></asp:TextBox>
              
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Please enter your Last Name" ControlToValidate="txtLName" ForeColor="#FF6666" Font-Names="Arial" Font-Size="Small" Font-Bold="True"></asp:RequiredFieldValidator>
                <br />

        <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="Signup_Password" TextMode="Password"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please choose a password" ControlToValidate="txtPassword" ForeColor="#FF6666" Font-Names="Arial" Font-Size="Small" Font-Bold="True"></asp:RequiredFieldValidator>
            <br />
          
         <asp:TextBox ID="txtPass2" runat="server" placeholder="Confirm Password" CssClass="Signup_Pass2"  TextMode="Password"></asp:TextBox>
              
            <br />

             <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Both passwords must be the same" ControlToCompare="txtPassword" ControlToValidate="txtPass2" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" Font-Bold="True"></asp:CompareValidator>
           <br />
            
         <asp:TextBox ID="txtEmail" runat="server"  placeholder="Email" CssClass="Signup_Email" TextMode="Email" ></asp:TextBox>
                 
            <br /><br />
        
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                ErrorMessage="You must enter a valid email" ForeColor="#FF6666" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator>
            <br />   
            
<asp:TextBox ID="txtYear" runat="server"  placeholder="Year Of Birth" CssClass="Signup_YoB" ></asp:TextBox>       
                
<asp:RangeValidator ID="rvYoB" runat="server" 
            ErrorMessage="Must be over 18 Years Old"
          MaximumValue="1994" MinimumValue="1902" ControlToValidate="txtYear" ForeColor="#FF6666" Font-Bold="True"></asp:RangeValidator>
                <br />
         <asp:Button ID="btnSubmit" runat="server" Text="Sign Up" CssClass="Signup_btn" OnClick="btnSubmit_Click" />


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" InsertCommand="INSERT INTO [User] (Email, Password, FName, LName, YoB) VALUES (@Email, @Password, @FName, @LName, @YOB)" SelectCommand="SELECT Email, Password, FName, LName, YoB FROM [User]">
                <InsertParameters>
                    <asp:Parameter Name="Email" />
                    <asp:Parameter Name="Password" />
                    <asp:Parameter Name="FName" />
                    <asp:Parameter Name="LName" />
                    <asp:Parameter Name="YOB" />
                </InsertParameters>
            </asp:SqlDataSource>

    </center>
</asp:Content>
