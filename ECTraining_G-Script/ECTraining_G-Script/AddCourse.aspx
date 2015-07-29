<%@ Page Language="C#" MasterPageFile="~/Site.Admin.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="ECTraining_G_Script.AddCourse" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <link href="Content/bootstrap.css" rel="stylesheet" />


     <h3>Add New Course</h3>
    <br /><br />
    <hr />
    <div class="form-horizontal">
<%--        <a href="DeletedModules.aspx">Go To Deleted Modules</a>--%>
        <br />
        <div class="form-group">
        <asp:Label ID="lblCourseName" runat="server" Text="Course Name" AssociatedControlID="txtCourseName" CssClass="col-md-2 control-label"></asp:Label>
        <div class="col-md-10">
         <asp:TextBox ID="txtCourseName" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ForeColor="Red" runat="server" ErrorMessage="Course Name is Required" ControlToValidate="txtCourseName"></asp:RequiredFieldValidator>
        </div>
        </div>
        <div class="form-group">
        <asp:Label ID="lblDesc" runat="server" Text="Description" AssociatedControlID="txtDesc" CssClass="col-md-2 control-label"></asp:Label>
        <div class="col-md-10">
        <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control" TextMode="MultiLine" Width="35%"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescription" runat="server" ForeColor="Red" ErrorMessage="Description is Required" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
        </div>
        </div>
        <br />
        <br />
        
        
        <asp:GridView ID="gvModulesData" OnSelectedIndexChanged="gvModulesData_SelectedIndexChanged"  runat="server" AutoGenerateColumns="False" DataKeyNames="ModuleNo" AutoGenerateEditButton="false" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Width="900px"  Height="176px" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HiddenField ID="moduleNo" runat="server" value='<%# Eval("ModuleNo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Module No">
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
                <asp:TemplateField HeaderText="Check">
                    <ItemTemplate>
                      <asp:CheckBox ID="cbModule" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                 </asp:TemplateField>
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
        <table><tr><td class="btn pull-left"><asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="ADD" Width="86px" OnClick="btnAdd_Click" /></td><td class="btn pull-right"><asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="CANCEL" OnClick="btnCancel_Click" /></td></tr></table>
        <br />
        <br />
<%--        <asp:Label ID="lblResult" runat="server" Text="" />--%>
   

    </div>
 </asp:Content>
