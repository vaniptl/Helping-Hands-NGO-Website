<%@ Page Title="" Language="C#" MasterPageFile="~/Donor/Donor.master" AutoEventWireup="true" CodeFile="UpdatePassword.aspx.cs" Inherits="Donor_UpdatePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        &nbsp;&nbsp; Update Password</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Old Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtOld" runat="server" Height="37px" Width="275px"></asp:TextBox>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNew" runat="server" Height="31px" Width="268px"></asp:TextBox>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm new password:
        <asp:TextBox ID="txtCnew" runat="server" Height="37px" Width="260px"></asp:TextBox>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:Button ID="btnChange" runat="server" onclick="btnChange_Click" 
            Text="Change" />
    </p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblpass" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <br />
    </p>
</asp:Content>

