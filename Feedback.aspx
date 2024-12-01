<%@ Page Title="" Language="C#" MasterPageFile="~/Donor/Donor.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Donor_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Provide Feedback</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Donor ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDonorID" runat="server" Height="30px" Width="224px"></asp:TextBox>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donor Name&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server" Height="30px" Width="224px"></asp:TextBox>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="224px"></asp:TextBox>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtContact" runat="server" Height="30px" Width="224px"></asp:TextBox>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFeedback" runat="server" Height="30px" TextMode="MultiLine" 
            Width="224px"></asp:TextBox>
    </p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        <asp:Button ID="btnFeedback" runat="server" onclick="btnFeedback_Click" 
            Text="Feedback" />
    </p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </p>
</asp:Content>

