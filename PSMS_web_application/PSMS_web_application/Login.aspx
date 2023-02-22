<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PSMS_web_application.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <h2>register here </h2>
     <div class="row">
        <div class="col">
            <h4>Login Here..</h4>
            <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-warning" Visible="false">
                <h5>Login Failed!!</h5>
                <p>Failed to login!!</p>
            </asp:Panel>
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">Username</label>
                <asp:TextBox ID="userName" runat="server" CssClass="form-control col-6"></asp:TextBox>
                 <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="name is required!!!" ControlToValidate="userName" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="userName" ForeColor="red" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z]{3,8}$*"></asp:RegularExpressionValidator>
                --%>
            </div>
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">Password</label>
                <asp:TextBox ID="password" runat="server" CssClass="form-control col-6"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="password is required!!!" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group row">
                <div class="offset-2">
                    <asp:Button ID="login" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="login_Click2"/>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
