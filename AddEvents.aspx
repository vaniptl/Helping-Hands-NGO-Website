<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddEvents.aspx.cs" Inherits="Admin_AddEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000;" 
        align="center">
        Add Events</p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        Event Name&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEventName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtEventName" Display="Dynamic" 
            ErrorMessage="Name is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtDesc" Display="Dynamic" ErrorMessage="Description is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtAddress" Display="Dynamic" 
            ErrorMessage="Address is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtState" Display="Dynamic" ErrorMessage="State is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Date is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtTime" Display="Dynamic" ErrorMessage="Time is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDuratiion" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtDuratiion" Display="Dynamic" 
            ErrorMessage="Duration is required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="fileImage" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="fileImage" Display="Dynamic" ErrorMessage="File is required" 
            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #008000;" 
        align="center">
        <asp:Button ID="btnAddEvent" runat="server" onclick="btnAddEvent_Click" 
            Text="Add Event" BackColor="#009900" ForeColor="White" />
        
    </p>
    <p class="mainbar" 
        
        style="dj; font-family: Arial, Helvetica, sans-serif; font-size: medium; color: #808080;" 
        align="center">
        <asp:Label ID="lblAddEvent" runat="server"></asp:Label>
    </p>
</asp:Content>

