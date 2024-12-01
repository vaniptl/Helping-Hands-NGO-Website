<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageDonor.aspx.cs" Inherits="Admin_ManageDonor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000" 
        align="center">
&nbsp;&nbsp;&nbsp; Manage Donor<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Did] FROM [Donor]"></asp:SqlDataSource>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donor ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="drpDonorID" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Did" 
            DataValueField="Did" Height="28px" 
            onselectedindexchanged="drpDonorID_SelectedIndexChanged" Width="217px">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="drpDonorID" Display="Dynamic" ErrorMessage="ID is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Full Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server" Height="35px" Width="218px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p id="txtAddress" class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server" Height="32px" TextMode="MultiLine" 
            Width="215px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtAddress" Display="Dynamic" 
            ErrorMessage="Address is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No.&nbsp;&nbsp;
        <asp:TextBox ID="txtContact" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtContact" Display="Dynamic" 
            ErrorMessage="Contact is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
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
</asp:Content>

