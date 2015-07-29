<%@ Page Language="C#" MasterPageFile="~/Site.Admin.Master" AutoEventWireup="true" CodeBehind="AddModule.aspx.cs" Inherits="ECTraining_G_Script.AddModule" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add Module</h3> 
    <br /><br />
    <hr />
    <div class="form-horizontal">
        
        <div class="form-group">
        <asp:Label ID="lblModuleName" runat="server" Text="Module Name" AssociatedControlID="txtModuleName" CssClass="col-md-2 control-label"></asp:Label>
        <div class="col-md-10">
         <asp:TextBox ID="txtModuleName" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ForeColor="Red" runat="server" ErrorMessage="Module Name is Required" ControlToValidate="txtModuleName"></asp:RequiredFieldValidator>
        </div>
        </div>
        <div class="form-group">
        <asp:Label ID="lblLevel" runat="server" Text="Level" AssociatedControlID="txtLevel" CssClass="col-md-2 control-label"></asp:Label>
        <div class="col-md-10">
        <asp:TextBox ID="txtLevel" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLevel" ForeColor="Red" runat="server" ErrorMessage="Module Level is Required" ControlToValidate="txtLevel"></asp:RequiredFieldValidator>
        </div>
        </div>
        <div class="form-group">
        <asp:Label ID="lblDura" runat="server" Text="Duration" AssociatedControlID="txtDura" CssClass="col-md-2 control-label"></asp:Label>
        <div class="col-md-10">
        <asp:TextBox ID="txtDura" runat="server" CssClass="form-control" TextMode="Number" Width="35%"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDuration" runat="server" ErrorMessage="Duration Is Required" ControlToValidate="txtDura" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidatorDuration" ForeColor="Red" MinimumValue="1" MaximumValue="3" runat="server" ErrorMessage="Please Enter Number of days From 1 to 3" ControlToValidate="txtDura"></asp:RangeValidator>
        </div>
        </div>
        <div class="form-group">
        <asp:Label ID="lblPrice" runat="server" Text="Price (R)" AssociatedControlID="txtPrice" CssClass="col-md-2 control-label"></asp:Label>
        <div class="col-md-10">
        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ErrorMessage="Please Enter Price For Module" ForeColor="Red" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPrice" runat="server" ErrorMessage="Please Enter Valid Amount" ForeColor="Red" ControlToValidate="txtPrice" ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
        </div>
        </div>
        <div class="form-group">
        <asp:Label ID="lblDesc" runat="server" Text="Description" AssociatedControlID="txtDesc" CssClass="col-md-2 control-label"></asp:Label>
        <div class="col-md-10">
        <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control" TextMode="MultiLine" Width="35%"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescription" runat="server" ForeColor="Red" ErrorMessage="Description is Required" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
        </div>
        </div>
         <br /><br />
        <table><tr><td class="btn pull-left"><asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="ADD" Width="86px" OnClick="btnAdd_Click" /></td><td class="btn pull-right"><asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="CANCEL" OnClick="btnCancel_Click" /></td></tr></table>
        

    </div> 
</asp:Content> 
    