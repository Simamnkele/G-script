<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Proof of Payment.aspx.cs" Inherits="eClient_Proof_of_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h2 style="padding-left:40%;">Proof of Payment</h2>
    <br/>
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
</asp:Content>

