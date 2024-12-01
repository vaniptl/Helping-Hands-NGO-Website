<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddVolunteer.aspx.cs" Inherits="Admin_AddVolunteer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p class="mainbar" 
    
        style="font-size: large; color: #000000; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    &nbsp;&nbsp;&nbsp;
    Volunteer Regestration</p>
<p class="mainbar" 
    style="font-size: large; color: #000000; font-family: Arial, Helvetica, sans-serif">
    &nbsp;</p>
<p class="mainbar" 
    
        style="font-size: medium; color: #808080; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    &nbsp;&nbsp;
    Enter your name:<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtname" Display="Dynamic" 
        ErrorMessage="Enter YourFullname please" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="mainbar" 
    
        style="font-size: medium; color: #808080; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    &nbsp;&nbsp;
    Enter your Address:<asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtAdd" Display="Dynamic" ErrorMessage="Enter your Address" 
        Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="mainbar" 
    
        style="font-size: medium; color: #808080; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    &nbsp;&nbsp;
    Enter your Email ID:<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter your email" 
        Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="mainbar" 
    
        style="font-size: medium; color: #808080; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    &nbsp;&nbsp;
    Enter your Contact No:<asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtContact" Display="Dynamic" 
        ErrorMessage="Enter contact number" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="mainbar" 
    
        style="font-size: medium; color: #808080; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    &nbsp;&nbsp;
    Enter your User Name:<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtUsername" Display="Dynamic" 
        ErrorMessage="enter username please" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="mainbar" 
    
        style="font-size: medium; color: #808080; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    &nbsp;&nbsp;
    Enter Your Password:<asp:TextBox ID="txtPass" runat="server" 
        TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="txtPass" Display="Dynamic" 
        ErrorMessage="Password is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="mainbar" 
    
        style="font-size: large; color: #000000; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    <asp:Button ID="btnReg" runat="server" BackColor="#009900" ForeColor="White" 
        onclick="btnReg_Click" Text="Register Now" />
</p>
<p class="mainbar" 
    
        style="font-size: large; color: #808080; font-family: Arial, Helvetica, sans-serif" 
        align="center">
    <asp:Label ID="lblregister" runat="server" Font-Size="Small"></asp:Label>
</p>
<p class="mainbar">
</p>
</asp:Content>

