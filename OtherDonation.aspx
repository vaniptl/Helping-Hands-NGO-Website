<%@ Page Title="" Language="C#" MasterPageFile="~/Donor/Donor.master" AutoEventWireup="true" CodeFile="OtherDonation.aspx.cs" Inherits="Donor_OtherDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        Donate Other Things</p>
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donor ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtID" runat="server" Height="32px" Width="244px"></asp:TextBox>
    </p>
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donation &nbsp;Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtFoodType" runat="server" Height="32px" Width="244px"></asp:TextBox>
    </p>
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donation Description&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDesc" runat="server" Height="32px" TextMode="MultiLine" 
            Width="244px"></asp:TextBox>
    </p>
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donation Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="fileImgupload" runat="server" />
    </p>
    <p align="left" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pickup Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPickupLocation" runat="server" Height="32px" 
            TextMode="MultiLine" Width="244px"></asp:TextBox>
    </p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        <asp:Button ID="btnDonate" runat="server" onclick="btnDonate_Click" 
            Text="Donate" />
    </p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </p>
</asp:Content>

