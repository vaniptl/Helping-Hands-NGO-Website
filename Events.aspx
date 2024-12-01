<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="mainbar" align="center" style="font-size: large">
        OUR EVENTS</p>
    <p class="mainbar" align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource1" 
            EmptyDataText="No Data Found" Height="297px" PageSize="5" Width="86%">
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
                    SortExpression="EImage" />
            </Columns>
            <EditRowStyle BackColor="Silver" ForeColor="#003300" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
    </p>
    <p class="mainbar" align="center">
        &nbsp;</p>
    <p class="mainbar" align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
    </p>
    <p class="mainbar" align="center">
        &nbsp;</p>
    <p class="mainbar">
        &nbsp;</p>
    <p class="mainbar">
        &nbsp;</p>
    <p class="mainbar">
        &nbsp;</p>
</asp:Content>

