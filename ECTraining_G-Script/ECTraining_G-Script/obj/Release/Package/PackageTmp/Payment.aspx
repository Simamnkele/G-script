<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="ECTraining_G_Script.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="padding-left:40%;">Proof of Payment</h2>
    <br/>
    <form>
        <div class="form-group">
            <ul>
                <li><a runat="server" href="~/PurchaseOrder">Purchase Order</a></li>
            </ul>
        </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="CompanyName">Company Name</label>
    <input type="email" class="form-control" id="CompanyName" placeholder="Company Name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">File input</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">Enter bank note</p>
  </div>
        <button type="submit" class="btn btn-default">Submit</button>
  </div>
  
</form>
</asp:Content>
