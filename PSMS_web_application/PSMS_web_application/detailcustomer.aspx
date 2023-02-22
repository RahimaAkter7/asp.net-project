<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="detailcustomer.aspx.cs" Inherits="PSMS_web_application.detailcustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
            <h4 class="text-center btn btn-group col-6">customer detail </h4>
           <div class="d-flex justify-content-center">
                <a href="frmorderAdd.aspx" class="btn btn-outline-primary ">Add New</a>
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="c_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="c_ID" HeaderText="c_ID" InsertVisible="False" ReadOnly="True" SortExpression="c_ID" />
                    <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="DeliveryLocation" HeaderText="DeliveryLocation" SortExpression="DeliveryLocation" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString5 %>" DeleteCommand="DELETE FROM [customer] WHERE [c_ID] = @c_ID" InsertCommand="INSERT INTO [customer] ([customerName], [Contact], [Email], [DeliveryLocation]) VALUES (@customerName, @Contact, @Email, @DeliveryLocation)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [customerName] = @customerName, [Contact] = @Contact, [Email] = @Email, [DeliveryLocation] = @DeliveryLocation WHERE [c_ID] = @c_ID">
                <DeleteParameters>
                    <asp:Parameter Name="c_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="customerName" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="DeliveryLocation" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="customerName" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="DeliveryLocation" Type="String" />
                    <asp:Parameter Name="c_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
