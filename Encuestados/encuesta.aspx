<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="encuesta.aspx.cs" Inherits="Encuestados.encuesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="pencuesta.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Encuesta</h1>

        <div class="Cnombre">
            Nombre :
            <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
        </div>

        <div class="Capellido">
            Apellido:
            <asp:TextBox ID="tapellido" runat="server"></asp:TextBox>
        </div>

        <div class="cfecha">
            Fecha de nacimiento:
            <asp:TextBox ID="tfechaNacimiento" runat="server"></asp:TextBox>
        </div>

        <div class="cedad">
            Edad:
            <asp:TextBox ID="tedad" runat="server"></asp:TextBox>
        </div>
        <label for="username">Username</label>
        <asp:TextBox ID="tcorreo" class="form-control" placeholder="your-email@gmail.com" runat="server"></asp:TextBox>

        <div class="carroPropio">
            ¿Tiene carro propio?
            <asp:TextBox ID="tcarroPropio" runat="server"></asp:TextBox>
        </div>


        <br />
        <br />

        <div>
            <asp:Button ID="rregistrar" runat="server" Text="Registrarse" />
            <asp:Button ID="Reliminar" runat="server" Text="Eliminar" />
            <!-- Comentario: Botón para registrar y botón para eliminar -->
        </div>
    </div>
</asp:Content>


