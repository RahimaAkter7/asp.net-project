<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPlant.aspx.cs" Inherits="PSMS_web_application.frmPlant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
     
    
        <div class="row justify-content-center">
        <div class="col-6 justify-content-center">

            <h4 >add  new Plant</h4>

         <div class="d-flex justify-content-end col-10"> 
               <a href="AllPlantDetail.aspx" class="btn btn-outline-primary ">View</a>
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
            <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered" DefaultMode="Insert" runat="server" Height="50px" Width="120px" AutoGenerateRows="False" DataKeyNames="P_ID" DataSourceID="SqlDataSourceplant" OnItemInserting="DetailsView1_ItemInserting" BackColor="White" EnableModelValidation="False" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#009933">
                <Fields>
                    <asp:BoundField DataField="P_ID" HeaderText="P_ID" InsertVisible="False" ReadOnly="True" SortExpression="P_ID" />
                    <asp:TemplateField HeaderText="PlantName" SortExpression="PlantName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PlantName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtplant" CssClass="form-control"  runat="server" Text='<%# Bind("PlantName") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name is Required" ForeColor="Red" ControlToValidate="txtplant"></asp:RequiredFieldValidator>

                         <%--   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="red" ControlToValidate="txtplant" ValidationExpression="^[a-zA-Z]{3,8}$" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>--%>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("PlantName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Plant Type" SortExpression="ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2"   runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control"  runat="server" DataSourceID="SqlDataSource2" DataTextField="PlantType" DataValueField="ID" SelectedValue='<%# Bind("ID") %>'></asp:DropDownList>
                            
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString5 %>" SelectCommand="SELECT * FROM [PlantTypes]"></asp:SqlDataSource>
                         
                            <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>--%>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Season Plant" SortExpression="S_ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" CssClass="form-control"  runat="server" Text='<%# Bind("S_ID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList2" CssClass="form-control"  runat="server" DataSourceID="SqlDataSource1" DataTextField="PlantBySeason" DataValueField="S_ID" SelectedValue='<%# Bind("S_ID") %>'></asp:DropDownList>
                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString5 %>" SelectCommand="SELECT * FROM [SeasonPlant]"></asp:SqlDataSource>
                            



                            <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("S_ID") %>'></asp:TextBox>--%>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("S_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity_pc">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Quantity_pc") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" CssClass="form-control"  runat="server" Text='<%# Bind("Quantity_pc") %>'></asp:TextBox>
                            

                      <%--    <% using   required feild validator and range validator   %>--%> 
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Quantity  is required" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvclass" runat="server" ControlToValidate="TextBox4" 
   ErrorMessage="Enter  number must be 1 to 100 limited" MaximumValue="100" 
   MinimumValue="1" Type="Integer" ForeColor="red">
   
</asp:RangeValidator>

                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Quantity_pc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price"  SortExpression="P_Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("P_Price") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("P_Price") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="price is Required" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("P_Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Is Avaible" SortExpression="IsAvaible">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IsAvaible") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="CheckBox1" CssClass="form-control"  runat="server" Checked='<%# Bind("IsAvaible") %>' />
                          </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IsAvaible") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="picture" SortExpression="picture">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:FileUpload ID="fuPicture"   runat="server"  />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Bind("picture") %>' />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" picture is required" ControlToValidate="fuPicture" ForeColor="red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("picture","~/Images/{0}") %>' Width="32" Height="32"/>
                          <%--  <asp:Label ID="Label6" runat="server" Text='<%# Bind("picture") %>'></asp:Label>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-outline-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-outline-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSourceplant" runat="server" ConnectionString="<%$ ConnectionStrings:PSMSConnectionString5 %>" DeleteCommand="DELETE FROM [Plants] WHERE [P_ID] = @P_ID" InsertCommand="INSERT INTO [Plants] ([PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (@PlantName, @ID, @S_ID, @Quantity_pc, @P_Price, @IsAvaible, @picture)" SelectCommand="SELECT * FROM [Plants]" UpdateCommand="UPDATE [Plants] SET [PlantName] = @PlantName, [ID] = @ID, [S_ID] = @S_ID, [Quantity_pc] = @Quantity_pc, [P_Price] = @P_Price, [IsAvaible] = @IsAvaible, [picture] = @picture WHERE [P_ID] = @P_ID">
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
