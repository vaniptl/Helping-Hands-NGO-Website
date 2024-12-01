<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" style="font-size: medium">
        Login As&nbsp;
        <asp:RadioButton ID="rdoAdmin" runat="server" AutoPostBack="True" 
            GroupName="biu" Text="Admin" oncheckedchanged="Logintype" />
&nbsp;
        <asp:RadioButton ID="rdoDonor" runat="server" AutoPostBack="True" 
            GroupName="biu" Text="Donor" oncheckedchanged="Logintype" />
&nbsp;&nbsp;
        <asp:RadioButton ID="rdoVol" runat="server" AutoPostBack="True" GroupName="biu" 
            Text="Volunteer" oncheckedchanged="Logintype" />
    </p>
    <p class="mainbar" style="font-size: medium">
&nbsp;&nbsp;&nbsp;&nbsp; Username :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtUsername" Display="Dynamic" 
            ErrorMessage="Username is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" style="font-size: medium">
&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtPass" Display="Dynamic" 
            ErrorMessage="Password is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" align="center">
        <asp:Button ID="btnLogin" runat="server" Text="Log In" 
            onclick="btnLogin_Click" BackColor="#669900" ForeColor="White" />
    </p>
    <p class="mainbar">
        &nbsp; &nbsp;<asp:Label ID="lblLogin" runat="server"></asp:Label>
    </p>
    <p align="center" class="mainbar">
        Not Regestered Yet?
        <asp:HyperLink ID="hyperReg" runat="server" NavigateUrl="~/DVRegister.aspx">Register Now</asp:HyperLink>
    </p>
</asp:Content>

