<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="plantSeason.aspx.cs" Inherits="PSMS_web_application.plantSeason" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
        <h2  class="alert alert-info text-center">add  new Season plant</h2>
    <div class="text-center">
         <div class="row">
        <div class="col-4">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                <ContentTemplate>
                    <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert" DataSourceID="ObjectDataSource1">
                <EditItemTemplate>
                    S_ID:
                    <asp:TextBox ID="S_IDTextBox" runat="server" Text='<%# Bind("S_ID") %>' />
                    <br />
                    PlantBySeason:
                    <asp:TextBox ID="PlantBySeasonTextBox" runat="server" Text='<%# Bind("PlantBySeason") %>' />
                   
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                   <%-- S_ID:
                    <asp:TextBox ID="S_IDTextBox" runat="server" Text='<%# Bind("S_ID") %>' />
                    <br />--%>
                    PlantBySeason:
                    <asp:TextBox ID="PlantBySeasonTextBox" runat="server" Text='<%# Bind("PlantBySeason") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name is Required" ForeColor="Red" ControlToValidate="PlantBySeasonTextBox"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PlantBySeasonTextBox" ValidationExpression="^[a-zA-Z]{3,8}$" ErrorMessage=" name must me  letter" ForeColor="red"></asp:RegularExpressionValidator >
                           
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    S_ID:
                    <asp:Label ID="S_IDLabel" runat="server" Text='<%# Bind("S_ID") %>' />
                    <br />
                    PlantBySeason:
                    <asp:Label ID="PlantBySeasonLabel" runat="server" Text='<%# Bind("PlantBySeason") %>' />
                    <br />
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
                </ContentTemplate>


            </asp:UpdatePanel>
            
         
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="PSMS_web_application.Models.SeasonPlant" InsertMethod="Insert" SelectMethod="Get" TypeName="PSMS_web_application.DAL.Models.SeasonPlantGetWay"></asp:ObjectDataSource>
         
        </div>
    </div>
    <div class="row">
        <div class="col-4">
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="S_ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="S_ID" HeaderText="S_ID" InsertVisible="False" ReadOnly="True" SortExpression="S_ID" />
                    <asp:BoundField DataField="PlantBySeason" HeaderText="PlantBySeason" SortExpression="PlantBySeason" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
          

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString2 %>" DeleteCommand="DELETE FROM [SeasonPlant] WHERE [S_ID] = @S_ID" InsertCommand="INSERT INTO [SeasonPlant] ([PlantBySeason]) VALUES (@PlantBySeason)" SelectCommand="SELECT * FROM [SeasonPlant]" UpdateCommand="UPDATE [SeasonPlant] SET [PlantBySeason] = @PlantBySeason WHERE [S_ID] = @S_ID">
                <DeleteParameters>
                    <asp:Parameter Name="S_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PlantBySeason" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PlantBySeason" Type="String" />
                    <asp:Parameter Name="S_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
          

        </div>
    </div>
    </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
