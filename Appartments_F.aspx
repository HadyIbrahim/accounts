<%@ Page Title="شقق التشطيبات" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Appartments_F.aspx.cs" Inherits="Appartments_F" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager runat="server" ID="scrip">
    </asp:ScriptManager>
    <div dir="rtl">
        <cc1:TabContainer Width="100%" ID="tab_container" runat="server" 
            ActiveTabIndex="1">
            <cc1:TabPanel ID="tab_view" runat="server">
                <HeaderTemplate>
                   بيانات ابراج التشطيبات
                </HeaderTemplate>
                <ContentTemplate>
                    <div class="GridviewDiv">
                        <table style="width: 100%" border="0" dir="rtl" cellpadding="0" cellspacing="1" class="GridviewTable">
                            <tr>
                                <td>
                                    <asp:GridView Width="100%" BorderWidth="0px" ID="gv_data" CellPadding="1" CellSpacing="1"
                                        runat="server" PageSize="50" AutoGenerateColumns="False" 
                                        AllowPaging="True" onrowdatabound="gv_data_RowDataBound"       >
                                        <Columns>
                                            
                                            
                                            <asp:TemplateField HeaderText="  اسم البرج ">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("Name") %>' />
                                                </ItemTemplate>
                                                <HeaderStyle Width="150px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="    رقم الدور ">
                                                <HeaderStyle Width="80px" />
                                                <ItemStyle BorderWidth="1px" HorizontalAlign="Center" />
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_coufdfme"  runat="server" Text='<%#Eval("FloorNO") %>' />
                                                    
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           
                                            <asp:TemplateField HeaderText="    رقم  الشقه ">
                                                <HeaderStyle Width="80px" />
                                                <ItemStyle BorderWidth="1px" HorizontalAlign="Center" />
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_ApartmentNO"  runat="server" Text='<%#Eval("ApartmentNO") %>' />
                                                    
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField  Visible="false" HeaderText="Delete">
                                                <ItemTemplate>
                                                   <asp:ImageButton Width="17" Height="17" ToolTip="حذف" ImageUrl="~/images/Delete.png"
                                                        ID="img_delete" runat="server" CommandName='<%#Eval("ID") %>' OnClick="img_delete_Click" />
                                                </ItemTemplate>
                                                <HeaderStyle Width="50px" />
                                            </asp:TemplateField>
                                            
                                        </Columns>
                                        <HeaderStyle Height="40px" Font-Bold="True" Font-Underline="True" BackColor="#333333"
                                            ForeColor="White" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel1" runat="server">
                <HeaderTemplate>
                 للتشطيبات   تسجيل  برج   جديد
                </HeaderTemplate>
                <ContentTemplate>
                    <table dir="rtl">
                        <tr>
                            <td class="lbl">
                                <asp:Label ID="Label3" runat="server" Text="  اسم البرج "></asp:Label>
                            </td>
                            <td class="text">
                                <asp:DropDownList ValidationGroup="serv" ID="ddl_tower" runat="server" Width="300px"></asp:DropDownList>
                                <asp:RequiredFieldValidator ValidationGroup="serv" ID="RequiredFieldValidator1" ControlToValidate="ddl_tower"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="lbl">
                                <asp:Label ID="Label2" runat="server" Text="  رقم الدور  "></asp:Label>
                            </td>
                            <td class="text">
                                <asp:DropDownList ValidationGroup="serv" ID="ddl_floor" runat="server" Width="300px">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem >14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem >17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ValidationGroup="serv" ID="RequiredFieldValidator3" ControlToValidate="ddl_floor"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                         <tr>
                            <td class="lbl">
                                <asp:Label ID="Label1" runat="server" Text="  رقم الشقه  "></asp:Label>
                            </td>
                            <td class="text">
                                <asp:DropDownList ValidationGroup="serv" ID="ddl_appartno" runat="server" Width="300px">
                                 
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ValidationGroup="serv" ID="RequiredFieldValidator2" ControlToValidate="ddl_appartno"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                      
                        
                        
                        
                        
                        <tr>
                            <td>
                                <asp:Button ID="btn_save" ValidationGroup="serv" runat="server" Text="حفظ" OnClick="btn_save_Click" />
                            </td>
                            <td>
                                <asp:Button ID="btn_cancel" runat="server" Text="تفريغ/جديد" OnClick="btn_cancel_Click" />
                            </td>
                             <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="style2">
                            </td>
                            <td>
                            </td>
                             <td></td>
                            <td></td>
                        </tr>
                    </table>
                </ContentTemplate>
            </cc1:TabPanel>
        </cc1:TabContainer>
    </div>
</asp:Content>

