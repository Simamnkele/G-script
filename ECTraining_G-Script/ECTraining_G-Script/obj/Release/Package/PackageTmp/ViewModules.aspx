<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewModules.aspx.cs" Inherits="ECTraining_G_Script.ViewModules" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 478px; margin-top: 46px" class="form-group">
        <div class="form-horizontal">
            <div class="form-group">
            <asp:Label ID="lblModules" runat="server" AssociatedControlID="DropDownListModules" CssClass="col-md-2 control-label"><strong>Select A Module :</strong></asp:Label>
            <div class="form-group">
            <asp:DropDownList ID="DropDownListModules" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListModules_SelectedIndexChanged" Height="35%" Width="212px" CssClass="form-control">
        </asp:DropDownList>
                </div>
            </div>
        </div>
        <br />
        
        <br />
    
        <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="lblName" runat="server" Text="Module Name" AssociatedControlID="txtModuleName" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="txtModuleName" runat="server" Text=" " CssClass="form-control"></asp:TextBox>
                </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="lblDuration" runat="server" Text="Module Duration" AssociatedControlID="txtMdouleDuration" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="txtMdouleDuration" runat="server" Text=" " CssClass="form-control"></asp:TextBox>
                </div>
                 </div>
            <div class="form-group">
                    <asp:Label ID="lblPrice" runat="server" Text="Price (Per Person)" AssociatedControlID="txtModulePrice" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="txtModulePrice" runat="server" Text=" " CssClass="form-control"></asp:TextBox>


                </div>
            </div>
                <div class="form-group">
                    <asp:Label ID="lblDescription" runat="server" Text="Description" AssociatedControlID="txtDescription" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-10">
                    <asp:Label ID="txtDescription" runat="server" Text=" " CssClass="col-md-4 control-label"></asp:Label>
                </div>
                    </div>
        </div> 
    
    &nbsp;</div>
</asp:Content>
