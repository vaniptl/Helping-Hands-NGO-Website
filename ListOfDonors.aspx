<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ListOfDonors.aspx.cs" Inherits="Admin_ListOfDonors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="mainbar" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000" 
        align="center">
        &nbsp;&nbsp;&nbsp; List of Donors</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Did" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Did" HeaderText="Did" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Did" />
                <asp:BoundField DataField="Fullname" HeaderText="Fullname" 
                    SortExpression="Fullname" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Emailid" HeaderText="Emailid" 
                    SortExpression="Emailid" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                    SortExpression="ContactNo" />
            </Columns>
        </asp:GridView>
    </p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        &nbsp;</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        &nbsp;</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        &nbsp;</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        &nbsp;</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        &nbsp;</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        &nbsp;</p>
    <p class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Did], [Fullname], [Address], [Emailid], [ContactNo] FROM [Donor]">
        </asp:SqlDataSource>
    </p>
</asp:Content>

