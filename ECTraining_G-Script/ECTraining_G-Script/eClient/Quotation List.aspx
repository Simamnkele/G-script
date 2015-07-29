<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Quotation List.aspx.cs" Inherits="eClient_Quotation_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>My Quotations</h2>
    <br/>
    <hr/>
    
    <asp:Table ID="Table1" runat="server" Width="50%">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell></asp:TableHeaderCell>
            <asp:TableHeaderCell>Quotation No</asp:TableHeaderCell>
            <asp:TableHeaderCell>Duration(Days)</asp:TableHeaderCell>
            <asp:TableHeaderCell>Date Created</asp:TableHeaderCell>
            <asp:TableHeaderCell></asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow runat="server">
            <asp:TableCell Width="25px"><Button runat="server"><span class="glyphicon glyphicon-remove-sign"></span></Button></asp:TableCell>
            <asp:TableCell>005</asp:TableCell>
            <asp:TableCell>4</asp:TableCell>
            <asp:TableCell>2015/05/20</asp:TableCell>
            <asp:TableCell><Button runat="server"><span class="glyphicon glyphicon-plus-sign"></span></Button></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell><Button runat="server"><span class="glyphicon glyphicon-remove-sign"></span></Button></asp:TableCell>
            <asp:TableCell>067</asp:TableCell>
            <asp:TableCell>4</asp:TableCell>
            <asp:TableCell>2015/06/20</asp:TableCell>
            <asp:TableCell><Button runat="server"><span class="glyphicon glyphicon-plus-sign"></span></Button></asp:TableCell>
        </asp:TableRow>
        <asp:TableFooterRow>
            <asp:TableCell ColumnSpan="4">Quotation No: 005 - will be expiring within 5 days</asp:TableCell>
        </asp:TableFooterRow>
    </asp:Table>

</asp:Content>

