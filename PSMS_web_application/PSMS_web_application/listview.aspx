<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listview.aspx.cs" Inherits="PSMS_web_application.listview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
            <h2> list view</h2>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="order_id" DataSourceID="Sqllistview" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="order_idLabel" runat="server" Text='<%# Eval("order_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Eval("OrderDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="P_IDLabel" runat="server" Text='<%# Eval("P_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="c_IDLabel" runat="server" Text='<%# Eval("c_ID") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="order_idLabel1" runat="server" Text='<%# Eval("order_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="P_IDTextBox" runat="server" Text='<%# Bind("P_ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="c_IDTextBox" runat="server" Text='<%# Bind("c_ID") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="P_IDTextBox" runat="server" Text='<%# Bind("P_ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="c_IDTextBox" runat="server" Text='<%# Bind("c_ID") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="order_idLabel" runat="server" Text='<%# Eval("order_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Eval("OrderDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="P_IDLabel" runat="server" Text='<%# Eval("P_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="c_IDLabel" runat="server" Text='<%# Eval("c_ID") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">order_id</th>
                                        <th runat="server">OrderDate</th>
                                        <th runat="server">P_ID</th>
                                        <th runat="server">c_ID</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="order_idLabel" runat="server" Text='<%# Eval("order_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Eval("OrderDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="P_IDLabel" runat="server" Text='<%# Eval("P_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="c_IDLabel" runat="server" Text='<%# Eval("c_ID") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="Sqllistview" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString5 %>" DeleteCommand="DELETE FROM [OrdersDetail] WHERE [order_id] = @order_id" InsertCommand="INSERT INTO [OrdersDetail] ([OrderDate], [P_ID], [c_ID]) VALUES (@OrderDate, @P_ID, @c_ID)" SelectCommand="SELECT * FROM [OrdersDetail]" UpdateCommand="UPDATE [OrdersDetail] SET [OrderDate] = @OrderDate, [P_ID] = @P_ID, [c_ID] = @c_ID WHERE [order_id] = @order_id">
                <DeleteParameters>
                    <asp:Parameter Name="order_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="OrderDate" />
                    <asp:Parameter Name="P_ID" Type="Int32" />
                    <asp:Parameter Name="c_ID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="OrderDate" />
                    <asp:Parameter Name="P_ID" Type="Int32" />
                    <asp:Parameter Name="c_ID" Type="Int32" />
                    <asp:Parameter Name="order_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
