<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlPlantType.ascx.cs" Inherits="PSMS_web_application.WebUserControlPlantType" %>
 <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert" DataSourceID="ObjectDataSource1">
                    <EditItemTemplate>
                        ID:
                        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                        <br />
                        Planttype:
                                <asp:TextBox ID="Planttype" runat="server" Text='<%# Bind("Planttype") %>' />
                      
                        
                                <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                      <%--  ID:
                        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                        <br />--%>
                        Planttype:
                        <asp:TextBox ID="Planttype" runat="server" Text='<%# Bind("Planttype") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name is Required" ForeColor="Red" ControlToValidate="Planttype"></asp:RequiredFieldValidator>


                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" name must be letter" ValidationExpression="^[a-zA-Z]{3,8}$" ForeColor="red" ControlToValidate="Planttype"></asp:RegularExpressionValidator>
                   
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        ID:
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Bind("ID") %>' />
                        <br />
                        Planttype:
                        <asp:Label ID="PlanttypeLabel" runat="server" Text='<%# Bind("Planttype") %>' />
                        <br />
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
    