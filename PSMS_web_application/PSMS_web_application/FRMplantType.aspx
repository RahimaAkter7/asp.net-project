<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FRMplantType.aspx.cs" Inherits="PSMS_web_application.FRMplantType" %>

<%@ Register Src="~/WebUserControlPlantType.ascx" TagPrefix="uc1" TagName="WebUserControlPlantType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <h2  class="alert alert-info text-center">add  new Plant Type</h2>
        <div class="row">
            <div class="col-4">

                <uc1:WebUserControlPlantType runat="server" id="WebUserControlPlantType" />
               
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="PSMS_web_application.Models.PlantTypes" InsertMethod="Insert" SelectMethod="Get" TypeName="PSMS_web_application.DAL.Models.PlantTypesGetWay"></asp:ObjectDataSource>
            </div>
        </div>
    <div class="row">
        <div class="col-4">

            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="PlantType" HeaderText="PlantType" SortExpression="PlantType" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString %>" DeleteCommand="DELETE FROM [PlantTypes] WHERE [ID] = @ID" InsertCommand="INSERT INTO [PlantTypes] ([PlantType]) VALUES (@PlantType)" SelectCommand="SELECT * FROM [PlantTypes]" UpdateCommand="UPDATE [PlantTypes] SET [PlantType] = @PlantType WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PlantType" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PlantType" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>


  
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
