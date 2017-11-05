    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br />
    
    <center> 

        <div class ="Login">
        <br />

          <asp:TextBox ID="TextBox1" runat="server"  placeholder="Username" CssClass="Login_un"></asp:TextBox>
            
                <br /><br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" CssClass="Login_pw" TextMode="Password"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="Login_btn" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Update" CssClass="Login_btn" OnClick="Button2_Click" />
            <br /><br />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" SelectCommand="SELECT [Email], [Password], [FName], [LName] FROM [User] WHERE ([Email] = @Email) AND ([Password]=@Password)">
        <SelectParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" />
        </SelectParameters>

    </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="Login_lbl" Font-Bold="True" ForeColor="#FF6666" Font-Names="Arial" Font-Size="Small"></asp:Label>
            
        </div>
    </center>
    
</asp:Content>

