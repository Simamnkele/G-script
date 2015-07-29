﻿<%@ Page Language="C#"  MasterPageFile="~/Site.Admin.Master" AutoEventWireup="true" CodeBehind="DeletedModules.aspx.cs" Inherits="ECTraining_G_Script.DeletedModules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3>Deleted Modules</h3>
    <br /><br />
    <hr />
    <div class="form-group" aria-sort="ascending" draggable="true">
        <p><strong> Delete The Module You Want To Add To Modules List Page</strong></p>
        <br />
        <br />
        
        
        <asp:GridView ID="gvModulesData"  runat="server" AutoGenerateColumns="False" CellPadding="2" Height="176px" GridLines="None" ForeColor="Black"  OnRowDeleting="gvModulesData_RowDeleting" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" Width="767px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HiddenField ID="moduleNo" runat="server" value='<%# Eval("ModuleNo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Module No" Visible="false">
                    <EditItemTemplate>
                            <asp:Label ID="lblModuleNo" runat="server" Text='<%# Eval("ModuleNo") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="lblModuleN" runat="server" Text='<%# Bind("ModuleNo") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Module Name">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtModuleName" runat="server" Text='<%# Bind("ModuleName") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="lblModuleName" runat="server" Text='<%# Bind("ModuleName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Module Level">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtModuleLevel" runat="server" Text='<%# Bind("ModuleLevel") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="lblModuleLevel" runat="server" Text='<%# Bind("ModuleLevel") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Module Duration">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtModuleDuration" runat="server" Text='<%# Bind("ModuleDuration") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="lblModuleDuration" runat="server" Text='<%# Bind("ModuleDuration") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Module Price">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtModulePrice" runat="server" Text='<%# Bind("ModulePrice") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="lblModulePrice" runat="server" Text='<%# Bind("ModulePrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Module Description">
                    <EditItemTemplate>
                            <asp:TextBox ID="txtModuleDescription" runat="server" Text='<%# Bind("ModuleDescription") %>' Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                            <asp:Label ID="lblModuleDescription" runat="server" Text='<%# Bind("ModuleDescription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="true" HeaderText="Action" DeleteText="Activate" ControlStyle-ForeColor="Green" />
                
             </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
        <a href="ModulesList.aspx">Back To Modules List Page</a>
   

    </div>
 </asp:Content>