<%@ Page Title="" Language="C#" MasterPageFile="~/Volunteer/Volunteer.master" AutoEventWireup="true" CodeFile="MyEvents.aspx.cs" Inherits="Volunteer_MyEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        My Event List</p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                
                <asp:BoundField DataField="EventName" HeaderText="EventName" 
                    SortExpression="EventName" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                
                <asp:BoundField DataField="EImage" HeaderText="EImage" 
                    SortExpression="EImage" Visible="false"/>
                    <asp:TemplateField HeaderText="Event Image" >
                    <ItemTemplate  >
                        <asp:Image ID="img1" runat="server" ImageUrl='<%#Eval ("EImage")  %>' Height="100" Width="100" />
                    </ItemTemplate> 
                    
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [EImage], [EventName], [Description], [Address], [City], [State], [Date] FROM [Event]">
        </asp:SqlDataSource>
    </p>
</asp:Content>

