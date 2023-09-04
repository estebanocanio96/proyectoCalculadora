<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculadora.aspx.cs" Inherits="proyectoCalculadora.calculadora1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Calculadora Web</h2>
            <p> 
<asp:TextBox ID="TextBox1" runat="server" placeholder="Ingrese Primer numero"></asp:TextBox></p>
            <asp:TextBox ID="TextBox2" runat="server" placeholder ="Ingrese segundo numero"  ></asp:TextBox>
            <br /> <br/>
            <asp:DropDownList ID="DropDownList1" runat="server">
               
                <asp:ListItem Text="Sumar" Value="sumar"/>
                <asp:ListItem Text="Restar" Value="restar"/>
                <asp:ListItem Text="Multiplicar" Value="multiplicar"/>
                <asp:ListItem Text="Dividir" Value="dividir"/>
            </asp:DropDownList>
            
        <br /> <br/>
            <asp:Button ID="Button1" runat="server" Text="Calcular" OnClick="calculateButton_Click"/>
            <asp:Label ID="resultLabel" runat="server" Text="Resultado" EnableViewState="false" ></asp:Label>

        </div>
    </form>
</body>
</html>
