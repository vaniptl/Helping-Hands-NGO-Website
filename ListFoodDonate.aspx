<%@ Page Title="" Language="C#" MasterPageFile="~/Donor/Donor.master" AutoEventWireup="true" CodeFile="ListFoodDonate.aspx.cs" Inherits="Donor_ListFoodDonate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        Your food Donations</p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Food_id" DataSourceID="SqlDataSource1">
            <Columns>
            <asp:BoundField DataField="Food_id" HeaderText="Food_id" 
                    SortExpression="Food_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Did" HeaderText="Did" 
                    SortExpression="Did"/>
                <asp:BoundField DataField="Foodtype" HeaderText="Foodtype" 
                    SortExpression="Foodtype" />
                <asp:BoundField DataField="Fooddesc" HeaderText="Fooddesc" 
                    SortExpression="Fooddesc" />
                <asp:BoundField DataField="FoodImage" HeaderText="FoodImage" 
                    SortExpression="FoodImage" Visible="false"/>
                
                    <asp:TemplateField HeaderText="FoodImage" >
                    <ItemTemplate  >
                        <asp:Image ID="img1" runat="server" ImageUrl='<%#Eval ("FoodImage")  %>' Height="100" Width="100" />
                    </ItemTemplate> 
                    
                </asp:TemplateField>
                <asp:BoundField DataField="PickupLocation" HeaderText="PickupLocation" 
                    SortExpression="PickupLocation" />
                
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [FoodDonation]">
        </asp:SqlDataSource>
    </p>
</asp:Content>

