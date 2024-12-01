<%@ Page Title="" Language="C#" MasterPageFile="~/Donor/Donor.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="Donor_UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        Upadte Profile</p>
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Full Name&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    </p>
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
    </p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
            Text="Update" />
    </p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </p>
</asp:Content>

