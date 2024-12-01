<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageEvents.aspx.cs" Inherits="Admin_ManageEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000" 
        align="center">
    &nbsp;&nbsp;&nbsp; Manage Event</p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080" 
        align="left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Event ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:DropDownList ID="drpEventID" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Eid" 
            DataValueField="Eid" Height="28px" 
            onselectedindexchanged="drpEventID_SelectedIndexChanged" Width="217px">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Eid] FROM [Event]"></asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="drpEventID" Display="Dynamic" ErrorMessage="Select ID" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Event Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtName" runat="server" Height="35px" Width="218px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p  class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDesc" runat="server" Height="32px" TextMode="MultiLine" 
            Width="215px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtDesc" Display="Dynamic" ErrorMessage=" " 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtDate" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Date is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtTime" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtTime" Display="Dynamic" ErrorMessage="Time is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtAddress" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtAddress" Display="Dynamic" 
            ErrorMessage="Address is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtState" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtState" Display="Dynamic" ErrorMessage="State is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCity" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDuration" runat="server" Height="36px" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txtDuration" Display="Dynamic" 
            ErrorMessage="Duration is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #000000" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
            Text="Update" BackColor="#009933" ForeColor="White" />
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

