<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllPlantDetail.aspx.cs" Inherits="PSMS_web_application.AllPlantDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
   
    <div class="row">
        <div class="col">
            <h2> Plant Detail</h2>
             
            <div class="d-flex justify-content-center">
                <a href="frmPlant.aspx" class=" btn btn-outline-primary">Add New</a>
            </div>
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="P_ID" DataSourceID="SqlDataSourcegridview" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="P_ID" InsertVisible="False" ReadOnly="True" SortExpression="P_ID" />
                    <asp:TemplateField HeaderText="Plant Name" SortExpression="PlantName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("PlantName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("PlantName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Plant Type" SortExpression="ID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control"  runat="server" DataSourceID="SqlDataSourcetypes" DataTextField="PlantType" DataValueField="ID" SelectedValue='<%# Bind("ID") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcetypes" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString5 %>" SelectCommand="SELECT * FROM [PlantTypes]"></asp:SqlDataSource>
                            <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>--%>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Season Plant" SortExpression="S_ID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceseasons" DataTextField="PlantBySeason" DataValueField="S_ID" SelectedValue='<%# Bind("S_ID") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceseasons" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString5 %>" SelectCommand="SELECT * FROM [SeasonPlant]"></asp:SqlDataSource>
                            <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("S_ID") %>'></asp:TextBox>--%>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("S_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity_pc">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("Quantity_pc") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Quantity_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" SortExpression="P_Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("P_Price") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("P_Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Is Avaible" SortExpression="IsAvaible">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" CssClass="form-control" runat="server" Checked='<%# Bind("IsAvaible") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IsAvaible") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="picture" SortExpression="picture">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:HiddenField ID="HiddenField1" Value='<%# Bind("picture") %>' runat="server" />
                            <%--<asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>--%>
                        </EditItemTemplate>
                        <ItemTemplate>
                       
                             <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("picture","~/Images/{0}") %>' Width="32" Height="32"/>
                            <%--<asp:Label ID="Label6" runat="server" Text='<%# Bind("picture") %>'></asp:Label>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-outline-success" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass=" btn btn-outline-warning" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSourcegridview" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString5 %>" DeleteCommand="DELETE FROM [Plants] WHERE [P_ID] = @P_ID" InsertCommand="INSERT INTO [Plants] ([PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (@PlantName, @ID, @S_ID, @Quantity_pc, @P_Price, @IsAvaible, @picture)" SelectCommand="SELECT * FROM [Plants]" UpdateCommand="UPDATE [Plants] SET [PlantName] = @PlantName, [ID] = @ID, [S_ID] = @S_ID, [Quantity_pc] = @Quantity_pc, [P_Price] = @P_Price, [IsAvaible] = @IsAvaible, [picture] = @picture WHERE [P_ID] = @P_ID">
                <DeleteParameters>
                    <asp:Parameter Name="P_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PlantName" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="S_ID" Type="Int32" />
                    <asp:Parameter Name="Quantity_pc" Type="String" />
                    <asp:Parameter Name="P_Price" Type="Decimal" />
                    <asp:Parameter Name="IsAvaible" Type="Boolean" />
                    <asp:Parameter Name="picture" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PlantName" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="S_ID" Type="Int32" />
                    <asp:Parameter Name="Quantity_pc" Type="String" />
                    <asp:Parameter Name="P_Price" Type="Decimal" />
                    <asp:Parameter Name="IsAvaible" Type="Boolean" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="P_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
