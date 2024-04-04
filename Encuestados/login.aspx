<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Encuestados.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-7">
        <h3>Login</h3>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="tcorreo">Username</label>
                <asp:TextBox ID="tcorreo" CssClass="form-control" placeholder="your-email@gmail.com" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="tclave">Password</label>
                <asp:TextBox ID="tclave" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="control control--checkbox">
                    <span class="caption">Remember me</span>
                    <asp:CheckBox ID="chkRememberMe" runat="server" Checked="true" />
                    <span class="control__indicator"></span>
                </label>
            </div>
            <asp:Button ID="bagregar" CssClass="btn btn-block btn-primary" runat="server" Text="Ingresar" OnClick="bagregar_Click" />
            <asp:Label ID="lmensaje" runat="server" Text=""></asp:Label>
        </form>
    </div>
</asp:Content>
