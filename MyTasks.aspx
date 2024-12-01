<%@ Page Title="" Language="C#" MasterPageFile="~/Volunteer/Volunteer.master" AutoEventWireup="true" CodeFile="Mytasks.aspx.cs" Inherits="Mytasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        My Completed Tasks</p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Donation_id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Donation_id" HeaderText="Donation_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Donation_id" />
                <asp:BoundField DataField="DonationType" HeaderText="DonationType" 
                    SortExpression="DonationType" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Location" HeaderText="Location" 
                    SortExpression="Location" />
            </Columns>
        </asp:GridView>
    </p>
<p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Donation_id], [DonationType], [Address], [Location] FROM [DonationDelivery]">
        </asp:SqlDataSource>
    </p>
</asp:Content>


