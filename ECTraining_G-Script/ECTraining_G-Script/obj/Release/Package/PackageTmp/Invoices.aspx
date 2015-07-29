<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Admin.Master" AutoEventWireup="true" CodeBehind="Invoices.aspx.cs" Inherits="ECTraining_G_Script.Invoices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="padding-left:40%;">Invoices</h2>
   <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li><a runat="server" href="~/">View All Invoices</a></li>
            <li><a runat="server" href="~/">View By Company</a></li>
            <li><a runat="server" href="~/">View By Invoice ID</a></li>
        </ul>
    </div>
    <br />
    <div class="form-group">
        <asp:Label runat="server" ID="InvoiceIssue" CssClass="col-md-2 control-label">Invoices to issue</asp:Label>
        <div class="col-md-10">
            <table runat="server" id="invoices" style="width:50%;">
                <thead>
                    <tr>
                        <th>Invoice No</th>
                        <th>Company</th>
                        <th>Date to Issue</th>

                    </tr>
                </thead>
                <tr>
                    <td>0235</td>
                    <td>TypeWritingSA</td>
                    <td>2015/05/25</td>
                    <td><a href="~/">compile</a></td>

                </tr>
                <tr>
                    <td>3658</td>
                    <td>Jim's Fax And Printers</td>
                    <td>2015/05/30</td>
                    <td><a href="~/">compile</a></td>


                </tr>
                <tr>
                    <td>8958</td>
                    <td>Kirkwood Municipality</td>
                    <td>2015/06/01</td>
                    <td><a href="~/">compile</a></td>


                </tr>
                <tr>
                    <td>5628</td>
                    <td>Kwa-Magaki Counsolors Office</td>
                    <td>2015/06/01</td>
                    <td><a href="~/">compile</a></td>


                </tr>
                <tr>
                    <td>8596</td>
                    <td>BrookDawn Consultings</td>
                    <td>2015/06/05</td>
                    <td><a href="~/">compile</a></td>


                </tr>
                <tr>
                    <td>5698</td>
                    <td>AudioBass</td>
                    <td>2015/05/08</td>
                    <td><a href="~/">compile</a></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
