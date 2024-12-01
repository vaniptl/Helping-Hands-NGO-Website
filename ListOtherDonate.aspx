<%@ Page Title="" Language="C#" MasterPageFile="~/Donor/Donor.master" AutoEventWireup="true" CodeFile="ListOtherDonate.aspx.cs" Inherits="Donor_ListOtherDonate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        Your Other Donations</p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Oid" DataSourceID="SqlDataSource1">
            <Columns>
            <asp:BoundField DataField="OtherImage" HeaderText="OtherImage" 
                    SortExpression="OtherImage" Visible="false" />
            <asp:TemplateField HeaderText="OtherImage" >
                    <ItemTemplate  >
                        <asp:Image ID="img1" runat="server" ImageUrl='<%#Eval ("DonationImage")  %>' Height="100" Width="100" />
                    </ItemTemplate> 
                    
                </asp:TemplateField>
                <asp:BoundField DataField="Oid" HeaderText="Oid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Oid" />
                <asp:BoundField DataField="Did" HeaderText="Did" SortExpression="Did" />
                <asp:BoundField DataField="DonationType" HeaderText="DonationType" 
                    SortExpression="DonationType" />
                <asp:BoundField DataField="DonationDesc" HeaderText="DonationDesc" 
                    SortExpression="DonationDesc" />
                
                <asp:BoundField DataField="PickupLocation" HeaderText="PickupLocation" 
                    SortExpression="PickupLocation" />
                
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [OtherDonation]"></asp:SqlDataSource>
    </p>
</asp:Content>

