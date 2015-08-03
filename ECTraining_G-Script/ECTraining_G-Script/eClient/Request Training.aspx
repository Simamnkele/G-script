<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Request Training.aspx.cs" Inherits="eClient_Request_Training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <h2>Request Form</h2>
        <br />
           <asp:label runat="server" ID="Today" OnLoad="Page_Load"></asp:label>
        <br/>
        <hr/>
        
        <div class="col-xs-6">
            <%-- Left side of Request Form Page Data Input --%>          
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="CompanyName" CssClass="col-xs-3 control-label">Company Name</asp:Label>       
                <div class="col-xs-9">
                    <asp:TextBox runat="server" ID="CompanyName" CssClass="form-control" TextMode="SingleLine" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CompanyName"
                                CssClass="text-danger" ErrorMessage="The company name field is empty" />
                </div>
            </div>
           <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Contact" CssClass="col-xs-3 control-label">Contact No</asp:Label>
               <div class="col-xs-9">
                   <asp:TextBox runat="server" ID="Contact" TextMode="SingleLine" CssClass="form-control" />
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="Contact" CssClass="text-danger" ErrorMessage="Please enter a contact persons number" />
               </div>
           </div>
           <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="ContactPerson" CssClass="col-xs-3 control-label">Contact</asp:Label>           
               <div class="col-xs-9">
                   <asp:TextBox runat="server" ID="ContactPerson" TextMode="SingleLine" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ContactPerson" CssClass="text-danger" ErrorMessage="Please enter a contact persons name" />
               </div>
           </div>            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="email" CssClass="col-xs-3 control-label">E-mail Address</asp:Label>           
                <div class="col-xs-9">
                    <asp:TextBox runat="server" ID="email" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="email" CssClass="text-danger" ErrorMessage="incorrect" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="trainees" CssClass="col-xs-3 control-label">No. of trainees</asp:Label>           
                <div class="col-xs-9">
                    <asp:TextBox runat="server" ID="trainees" CssClass="form-control" TextMode="Number" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="trainees" CssClass="text-danger" ErrorMessage="Required field" />
                </div>
            </div>
            <asp:label runat="server" ID="CourseWarning" CssClass="">*NB - Select courses fitting your requirements.</asp:label> 

            <div class="row">
                <div class="col-xs-4">
                    <asp:label runat="server">Available Courses</asp:label>
                    <asp:ListBox runat="server" ID="availableCourse">
                        <asp:ListItem>CCNA Routing Concepts</asp:ListItem>
                        <asp:ListItem>CCNA Switching and Lan</asp:ListItem>
                        <asp:ListItem>Workplace Safety</asp:ListItem>
                        <asp:ListItem>Computer Basics</asp:ListItem>
                        <asp:ListItem>Internet Programming</asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="col-xs-2">
                    <br/>
                    <div class="col-xs-1 col-md-10">
                        <button type="button" class="btn btn-default" onclick="Arrow_Right_Click"><span class="glyphicon glyphicon-arrow-right"></span></button>               
                    </div>
                    <div class="col-xs-1 col-md-10">
                        <button type="button" class="btn btn-default" onclick="Arrow_Left_Click"><span class="glyphicon glyphicon-arrow-left"></span></button>
                    </div>
                    <div class="col-xs-1 col-md-10">
                        <button type="button" class="btn btn-default" onclick="Remove_Sign_Click"><span class="glyphicon glyphicon-remove-sign"></span></button>
                    </div>
                    
                </div>
                <div class="col-xs-4">
                    <asp:Label runat="server">Your Selection</asp:Label>
                    <asp:ListBox runat="server" ID="mySelection">
                        <asp:ListItem>Workplace Safety</asp:ListItem>
                    </asp:ListBox>
                </div>
            </div>
            <br/> 
            <div>
                <asp:Label runat="server" AssociatedControlID="StartDate" CssClass="col-xs-3 control-label">Start Date</asp:Label>
                    <div ">
                        <asp:Calendar ID="StartDate" runat="server"></asp:Calendar>
                    </div>
<%--                <asp:Label runat="server" AssociatedControlID="EndDate" CssClass="col-xs-3 control-label">End Date</asp:Label>
                    <div class="col-xs-9">
                        <asp:Calendar runat="server" ID="EndDate" CssClass="form-control"></asp:Calendar>

                    </div>--%>
            </div>
            <br/>
        <div>
                <asp:Label runat="server" AssociatedControlID="EndDate" CssClass="col-xs-3 control-label">End Date</asp:Label>
                    <div ">
                        <asp:Calendar ID="EndDate" runat="server"></asp:Calendar>
                    </div>
<%--                <asp:Label runat="server" AssociatedControlID="EndDate" CssClass="col-xs-3 control-label">End Date</asp:Label>
                    <div class="col-xs-9">
                        <asp:Calendar runat="server" ID="EndDate" CssClass="form-control"></asp:Calendar>

                    </div>--%>
            </div>  
            <br/>
                <div class="form-group">
            <asp:Button runat="server" ID="Button1" Text="Confirm" CssClass="btn-primary"  />
            <asp:Button runat="server" ID="Button2" Text="Cancel" CssClass="btn-danger"  />
        </div>        
        </div>
        
        <div class="col-xs-6">
            <h2 style="padding-left:35%;">Quotation</h2>
            <hr/>
            <%-- Right side of Request Form Page Online Quotation for Download and Printing --%>
            <asp:Panel runat="server" ID="eQuote" Visible="false">
                <table>
                    <tr>
                        <td><asp:Label runat="server">Eastern Cape Training Acadamy Of Technology</asp:Label></td>
                        <td style="border-left-style:solid;"><asp:Label runat="server">Tabatha Holdings</asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">52 Goven Mbeki Road</asp:Label>                           
                        </td>
                        <td style="border-left-style:solid;"><asp:Label runat="server">Ziyabuya Shopping Center</asp:Label></td>
                        </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">Sydneham</asp:Label>                           
                        </td>
                        <td style="border-left-style:solid;">
                            <asp:Label runat="server">Shop 26</asp:Label>
                        </td>
                        </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">Arcadia</asp:Label>
                        </td>
                        <td style="border-left-style:solid;"><asp:Label runat="server">Kwa-Dwesi</asp:Label></td>
                        </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">Port Elizabeth</asp:Label>                           
                        </td>
                        <td style="border-left-style:solid;"><asp:Label runat="server">Port Elizabeth</asp:Label></td>
                        </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server">Eastern Cape</asp:Label>
                        </td>
                        <td style="border-left-style:solid;"><asp:Label runat="server">Eastern Cape</asp:Label></td>
                        </tr>              
                </table>
                <%--Invoice Details--%>
                <br/>
                <table>
                        <tr><td><asp:Label runat="server">Quotation No: 067</asp:Label></td></tr>
                        <tr><td><br/></td></tr>
                        <tr><td><asp:Label runat="server">Zukisani Teyi             0602149876</asp:Label></td></tr>
                        <tr><td><br/></td></tr>
                        <tr><td><asp:Label runat="server">Preferred Start Date      2015/07/01 </asp:Label></td></tr>
                        <tr><td><asp:Label runat="server">Preferred End Date        2015/07/06</asp:Label></td></tr>
                        <tr><td><br/></td></tr>
                        <tr><td><asp:Label runat="server">This quotation will expire within 30 days</asp:Label></td></tr>
                </table>
                <br />
                <table width="100%">
                    <tr>
                        <th style="text-align:left">Course No</th>
                        <th style="text-align:center">Course</th>
                        <th style="text-align:right">PRICE</th>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>Workplace Safety</td>
                        <td style="text-align:right;">R   2000.00</td>
                    </tr>
                    <tr><td><br/></td></tr>
                    <tr>
                        <td>*</td>
                        <td>Number of Delegates</td>
                        <td style="text-align:right;">20</td>
                    </tr> 
                    <tr>
                        <td>*</td>
                        <td>Sub-Total</td>
                        <td style="text-align:right;">R   40000,00</td>
                    </tr> 
                    <tr>
                        <td>*</td>
                        <td>VAT 14%</td>
                        <td style="text-align:right;">R   5600.00</td>
                    </tr>
                    <tr><td><br/></td></tr>
                    <tr>
                        <td>*</td>
                        <td style="font-style:oblique;">Total</td>
                        <td style="text-align:right;">R   45600.00</td>
                    </tr>
                    <tr><td><br/></td></tr>
                                  
                </table>
                <asp:Button runat="server" Text="DOWNLOAD"/> 
                        <asp:Button runat="server" Text="PRINT"/>
                
            </asp:Panel>
            
        </div>
    </div>
</asp:Content>

