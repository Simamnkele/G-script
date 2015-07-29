<%@ Page Language="C#" MasterPageFile="~/Site.Admin.Master" AutoEventWireup="true" CodeBehind="ModulesList.aspx.cs" Inherits="ECTraining_G_Script.ModulesList" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <link href="Content/bootstrap.css" rel="stylesheet" />


     <h3>Module List</h3>
    <br /><br />
    <hr />
    <br />
    <div class="form-group" aria-sort="ascending" draggable="true">
        <a href="DeletedModules.aspx">Go To Deleted Modules</a>
        <br />
        <br />
        <Table>
            <tr>
        <td><asp:Label ID="lblSearch" runat="server" Text="Search:" AssociatedControlID="txtSearch" ></asp:Label></td><td style="width: 145px"><asp:TextBox ID="txtSearch" CssClass="form-control" runat="server" Height="35%" Width="100%" AutoCompleteType="Search" AutoPostBack="True" TextMode="Search" ToolTip="type module name to search for"></asp:TextBox></td>
        </tr>

        </Table>
        <br />
        <br />
        
        
        <asp:GridView ID="gvModulesData" DataKeyNames="ModuleNo" SelectedRowStyle-Font-Italic="true"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Width="900px" OnRowDeleting="gvModulesData_RowDeleting"  Height="176px" GridLines="Horizontal" OnSelectedIndexChanged="gvModulesData_SelectedIndexChanged">
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
                <asp:TemplateField HeaderText="Update">
                    <ItemTemplate>
                        <a href='<%#"UpdateModule.aspx?ModuleNo="+DataBinder.Eval(Container.DataItem,"ModuleNo")%>'>Edit</a>
                    </ItemTemplate>
                </asp:TemplateField>

                
                
                <asp:CommandField ShowDeleteButton="true" DeleteText="Deactivate" HeaderText="Action" ControlStyle-ForeColor="Red" />

                
             </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="White" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="btnAddModule" CssClass="btn btn-info" runat="server" Text="Add New Module" ForeColor="Black" OnClick="btnAddModule_Click" Height="33px" Width="148px" />
        <br />
        <br />
        <asp:Label ID="lblResult" runat="server" Text="" />
   

    </div>
 </asp:Content>
