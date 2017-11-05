<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student4720ConnectionString %>"
            SelectCommand="SELECT [Email], [Password], [FName], [LName], [YoB] FROM [User] WHERE ([Email] = @Email)"
            UpdateCommand="UPDATE [User] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YoB] = @YoB WHERE [Email] = @Email" DeleteCommand="DELETE FROM [User] WHERE (Email = @Email)" InsertCommand="INSERT INTO [User] (Email, Password, FName, LName, YoB) VALUES (@Email, @Password, @FName, @LName, @YoB)">
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YoB" Type="Int32" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Email" QueryStringField="Email" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="Email" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" />
                <asp:Parameter Name="Password" />
                <asp:Parameter Name="FName" />
                <asp:Parameter Name="LName" />
                <asp:Parameter Name="YoB" />
            </InsertParameters>
        </asp:SqlDataSource>
    <br />
    <center><bold>Please Change Your Information Now:</bold></center>

    <center> 

        <div class ="Signup">
        <br />

          <asp:TextBox ID="txtFName" runat="server"  placeholder="First name" CssClass="Signup_FName"></asp:TextBox>     
                      
                   
                <br /><br /> <br />
             

          <asp:TextBox ID="txtLName" runat="server"  placeholder="Last name" CssClass="Signup_LName" ></asp:TextBox>
              
                
                <br /><br /> <br />

        <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="Signup_Password" TextMode="Password"></asp:TextBox>
              
            <br /><br /> <br />
          
         <asp:TextBox ID="txtPass2" runat="server" placeholder="Confirm Password" CssClass="Signup_Pass2"  TextMode="Password"></asp:TextBox>
             

             
           <br /><br /> <br />
            
         <asp:TextBox ID="txtEmail" runat="server"  placeholder="Email" CssClass="Signup_Email" TextMode="Email" ></asp:TextBox>
                 
            <br /><br /> <br />
   
<asp:TextBox ID="txtYear" runat="server"  placeholder="Year Of Birth" CssClass="Signup_YoB" ></asp:TextBox>       
                
            <br /> <br /><br /> 
         <asp:Button ID="btnSubmit" runat="server" Text="Save" CssClass="Signup_btn" 
              onclick="btnSubmit_Click"  />

            <asp:Label ID="lblPassword" runat="server" Text="Label" Visible="False"></asp:Label>

            </div>
            </center>

        
</asp:Content>

