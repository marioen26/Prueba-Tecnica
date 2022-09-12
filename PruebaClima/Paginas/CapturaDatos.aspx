<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CapturaDatos.aspx.cs" Inherits="PruebaClima.Paginas.CapturaDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />

<body >
        <div class="auto-style7" background-color: #d8e8f8 ;">
             <h2>Ingresar Dattos</h2>     
            <div class="row">
                <div class="">
                    <asp:Label ID="lbTemperatura" runat="server" Font-Size="Large" Text="Temperatura"></asp:Label>
                    <div class="col-md-32">
                        <asp:TextBox ID="txtTemperatura" CssClass="form-control" runat="server" Font-Size="Larger"  ></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="">
                    <asp:Label ID="lblHumedad" runat="server" Font-Size="Large" Text="Humedad"></asp:Label>
                    <div class="col-md-32">
                        <asp:TextBox ID="txtHumedad" CssClass="form-control" runat="server" Font-Size="Larger"  ></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="">
                    <asp:Label ID="lblVisibilidad" runat="server" Font-Size="Large" Text="Visibilidad"></asp:Label>
                    <div class="col-md-32">
                        <asp:TextBox ID="txtVisibilidad" CssClass="form-control" runat="server" Font-Size="Larger"  ></asp:TextBox>
                    </div>
                </div>
            </div>

             <br />

            <br />
        <div class="center">
<%--            <div class="center">--%>
                <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar"  Font-Size="Large" BackColor="#99CCFF" Font-Bold="True" OnClick="btnAdicionar_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Actualizar"  Font-Size="Large" BackColor="#99CCFF" Font-Bold="True"  />
                <asp:Button ID="btdelete" runat="server" Text="Borrar"  Font-Size="Large" BackColor="#99CCFF" Font-Bold="True"  />

<%--            </div>--%>
        </div> 
        <br />

    </div>
</body>

</asp:Content>
