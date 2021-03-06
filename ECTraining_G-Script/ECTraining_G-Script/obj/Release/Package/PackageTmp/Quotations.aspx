﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Admin.Master" AutoEventWireup="true" CodeBehind="Quotations.aspx.cs" Inherits="ECTraining_G_Script.Quotations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="padding-left:40%;">Quotations</h2>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li><a runat="server" href="~/">View All Quotations</a></li>
            <li><a runat="server" href="~/">View By Company</a></li>
            <li><a runat="server" href="~/">View By Quote ID</a></li>
        </ul>
    </div>
    <br />
     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CompanyName" CssClass="col-md-2 control-label">Company Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="CompanyName" CssClass="form-control" TextMode="SingleLine" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CompanyName"
                                CssClass="text-danger" ErrorMessage="The company name field is empty" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Contact" CssClass="col-md-2 control-label">Contact No</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Contact" TextMode="SingleLine" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Contact" CssClass="text-danger" ErrorMessage="Please enter a contact persons name" />
                        </div>
                    </div>
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="Reference" CssClass="col-md-2 control-label">Reference No</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="Reference" CssClass="form-control" TextMode="SingleLine" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Reference"
                CssClass="text-danger" ErrorMessage="incomplete" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="Location" CssClass="col-md-2 control-label">Location</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="Location" CssClass="form-control" TextMode="SingleLine" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Reference"
                CssClass="text-danger" ErrorMessage="incomplete" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="contactperson" CssClass="col-md-2 control-label">Contact Person</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="contactperson" CssClass="form-control" TextMode="SingleLine" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Reference"
                CssClass="text-danger" ErrorMessage="incomplete" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="email" CssClass="col-md-2 control-label">E-mail Address</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="email" CssClass="form-control" TextMode="Email" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Reference"
                CssClass="text-danger" ErrorMessage="incorrect" />
        </div>
    </div>
      <asp:label runat="server" ID="CourseWarning" CssClass="">*NB - Select courses and or modules fitting your requirements.</asp:label> 
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="Course" CssClass="col-md-2 control-label">Course</asp:Label>
        <div class="col-md-10">
            <asp:CheckBoxList runat="server" ID="Course" CssClass="form-block">
                <asp:ListItem>MS Office</asp:ListItem>
                <asp:ListItem Selected="True">General Computing</asp:ListItem>
                <asp:ListItem>Cisco Networking </asp:ListItem>
                <asp:ListItem>Asp.Net 4.5</asp:ListItem>
            </asp:CheckBoxList>
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="Module" CssClass="col-md-2 control-label">Module</asp:Label>
        <div class="col-md-10">
            <asp:CheckBoxList runat="server" ID="Module" CssClass="form-block">
                <asp:ListItem Selected="True">MS Access</asp:ListItem>
                <asp:ListItem>Internet Explorer</asp:ListItem>
                <asp:ListItem>Cisco Networking - Routing</asp:ListItem>
                <asp:ListItem>Data Binding</asp:ListItem>
            </asp:CheckBoxList>
        </div>
    </div>
        <div class="form-group">
            <asp:Button runat="server" ID="btnConfirm" Text="Confirm" CssClass="btn-primary" />
            <asp:Button runat="server" ID="btnCancel" Text="Cancel" CssClass="btn-danger" />
        </div>
        
</asp:Content>
