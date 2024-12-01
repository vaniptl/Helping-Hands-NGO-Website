<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ListOfFeedback.aspx.cs" Inherits="Admin_ListOfFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        Feedbacks</p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Cid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Cid" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Emailid" HeaderText="Emailid" 
                    SortExpression="Emailid" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                    SortExpression="ContactNo" />
                <asp:BoundField DataField="Message" HeaderText="Message" 
                    SortExpression="Message" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Cid], [Name], [Emailid], [ContactNo], [Message] FROM [Contact]">
        </asp:SqlDataSource>
    </p>
</asp:Content>

