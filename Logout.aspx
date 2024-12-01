<%@ Page Title="" Language="C#" MasterPageFile="~/Volunteer/Volunteer.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Volunteer_Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="font-size: large; font-weight: 200; font-family: Arial, Helvetica, sans-serif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Click To LogOut&nbsp;
&nbsp;
        </div>
<div style="font-size: large; font-weight: 200; font-family: Arial, Helvetica, sans-serif">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="141px" 
            ImageUrl="~/images/logout.png" onclick="ImageButton1_Click" />
    </div>
</asp:Content>

