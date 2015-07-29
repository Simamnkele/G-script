<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Client Company.aspx.cs" Inherits="eClient_Client_Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
            <asp:PlaceHolder runat="server" ID="CompanyPage">
                <div class="form-group">
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CompanyName" CssClass="col-md-10">Company Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="CompanyName" CssClass="col-md-10" ></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CompanyName" ErrorMessage=" Company Name missing" CssClass="text-danger"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ContactPerson" CssClass="col-md-10">Contact Person</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="ContactPerson" CssClass="col-md-10" ></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ContactPerson" ErrorMessage="Must be someone other than user" CssClass="text-danger"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CellNo" CssClass="col-md-10">Cell No</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="CellNo" CssClass="col-md-10" ></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CellNo" ErrorMessage=" number must be 10 digits long" CssClass="text-danger"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="TellNo" CssClass="col-md-10">Office Ext</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="TellNo" CssClass="col-md-10" ></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="TellNo" ErrorMessage=" number must be 10 digits long" CssClass="text-danger"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-10">Address</asp:Label>
                        <div class="col-md-10">
                            <textArea runat="server" ID="Address" CssClass="col-md-10" cols="50" rows="8" ></textArea>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Address" ErrorMessage="field is required" CssClass="text-danger"/>
                        </div>
                    </div>
                    <br/>
                    <br/>
                    <hr/>
                    <div class="col-md-10">
                        <asp:button runat="server" ID="updateCompanyDetails" CssClass="btn btn-default" Text="Update" OnClick="UpdateCompanyDetails_Click" />
                    </div>
                </div>
            </asp:PlaceHolder>
</asp:Content>

