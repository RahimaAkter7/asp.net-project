<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="PSMS_web_application.frmRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">


    <div class="row">
        <div class="col">
            <h4>Register Here..</h4>
            <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-warning" Visible="false">
                <h5>Registration Failed!!</h5>
                <p>Failed to register user!!</p>
            </asp:Panel>
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">Username</label>
                <asp:TextBox ID="userName" runat="server" CssClass="form-control col-6"></asp:TextBox>
                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="username is required!!!" ControlToValidate="userName" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="userName" ValidationExpression="^[a-zA-Z]{3,8}$"  runat="server" ErrorMessage="must be name letter" ForeColor="red"></asp:RegularExpressionValidator>--%>

              
            </div>
            <div class="form-group row">

                <label class="col-form-label col-2 text-right">Password</label>
                <asp:TextBox ID="password" runat="server" CssClass="form-control col-6"></asp:TextBox>
                 <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="password is required!!!" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Invalid password" ControlToValidate="password" ForeColor="#FF3399" Operator="GreaterThan" Type="Double" ValueToCompare="0"></asp:CompareValidator>--%>
              
            </div>
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">Confirm-Password</label>
                <asp:TextBox ID="confirmPassword" runat="server" CssClass="form-control col-6"></asp:TextBox>
                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password is required!!!" ControlToValidate="confirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Two match don't password !!!" ControlToCompare="password" ControlToValidate="confirmPassword" Font-Bold="True" ForeColor="#FF0066" Type="Double"></asp:CompareValidator>
              --%>

            </div>
            <div class="form-group row">
                <div class="offset-2">
                    <asp:Button ID="register" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="register_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
