<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ListOfVolunteer.aspx.cs" Inherits="Admin_ListOfVolunteer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        List of Volunteer</p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Vid], [Fullname], [Address], [ContactNo], [Emailid] FROM [Volunteer]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Vid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Vid" HeaderText="Vid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Vid" />
                <asp:BoundField DataField="Fullname" HeaderText="Fullname" 
                    SortExpression="Fullname" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                    SortExpression="ContactNo" />
                <asp:BoundField DataField="Emailid" HeaderText="Emailid" 
                    SortExpression="Emailid" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

