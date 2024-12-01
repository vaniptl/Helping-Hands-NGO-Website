<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ListOfEvents.aspx.cs" Inherits="Admin_ListOfEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        List Of Events</p>
    <p align="center" class="mainbar" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #000000">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Eid], [EventName], [Description], [Date], [Time], [Address], [State], [City], [Duration], [EImage] FROM [Event]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Eid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="Eid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="EventName" HeaderText="EventName" 
                    SortExpression="EventName" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" 
                    SortExpression="Duration" />
                <asp:BoundField DataField="EImage" HeaderText="EImage" 
                    SortExpression="EImage" Visible="false"/>
                    <asp:TemplateField HeaderText="Event Image" >
                    <ItemTemplate  >
                        <asp:Image ID="img1" runat="server" ImageUrl='<%#Eval ("EImage")  %>' Height="100" Width="100" />
                    </ItemTemplate> 
                    
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

