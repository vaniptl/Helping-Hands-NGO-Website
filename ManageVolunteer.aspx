<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageVolunteer.aspx.cs" Inherits="Admin_ManageVolunteer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000" 
        align="center">
        &nbsp;&nbsp;&nbsp;
        Manage Volunteer<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Vid] FROM [Volunteer]"></asp:SqlDataSource>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Volunteer ID&nbsp;&nbsp; &nbsp;<asp:DropDownList 
            ID="drpVolunteerID" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True"  DataTextField="Vid" 
            DataValueField="Vid" Height="34px" 
            onselectedindexchanged="drpVolunteerID_SelectedIndexChanged" Width="217px" 
            DataSourceID="SqlDataSource1">
            <asp:ListItem>select</asp:ListItem>
        </asp:DropDownList>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="drpVolunteerID" Display="Dynamic" 
            ErrorMessage="ID is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        
    </p>
    <p  class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Full Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtname" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Name is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p id="txtAddress0" class="mainbar" 
        
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtAddress" Display="Dynamic" 
            ErrorMessage="Address is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No.&nbsp;&nbsp; &nbsp;&nbsp; 
        <asp:TextBox ID="txtContact" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtContact" Display="Dynamic" 
            ErrorMessage="Contact No is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
            Text="Update" BackColor="#009900" ForeColor="White" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
            Text="Delete" BackColor="#009900" ForeColor="White" />
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000">
        &nbsp;</p>

</asp:Content>

