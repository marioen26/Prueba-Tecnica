﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultarClima.aspx.cs" Inherits="PruebaClima.Paginas.ConsultarClima" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" >
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            width: 450px;
            margin-bottom: -1px;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style>
</head>
<body>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="CustomerId"
        OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
        <Columns>
            <asp:TemplateField HeaderText="Temperatura" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lbltemperatura" runat="server" Text='<%# Eval("CLI_TEMPERATURA") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtTemperatura" runat="server" Text='<%# Eval("CLI_TEMPERATURA") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Humedad" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblHumedad" runat="server" Text='<%# Eval("CLI_HUMEDAD") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtHumedad" runat="server" Text='<%# Eval("CLI_HUMEDAD") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Visilbilidad" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblVisibilidad" runat="server" Text='<%# Eval("CLI_VISIBILIDAD") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtVisibilidad" runat="server" Text='<%# Eval("CLI_VISIBILIDAD") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                ItemStyle-Width="150" />
        </Columns>
    </asp:GridView>
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
        <tr>
            <td style="width: 150px">
                Name:<br />
                <asp:TextBox ID="txTemperatura" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Country:<br />
                <asp:TextBox ID="txtHumedad" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                Country:<br />
                <asp:TextBox ID="txtVisibilidad" runat="server" Width="140" />
            </td>

            <td style="width: 100px">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
            </td>
        </tr>
    </table>
</body>
</html>


</asp:Content>
