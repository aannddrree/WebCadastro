<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebCadastro.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 102px;
        }
        .auto-style2 {
            width: 102px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 100%;
            height: 251px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cadastro de Pessoas<br />
            <br />
            <br />
        </div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style2">Nome:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtnome" runat="server" Width="232px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Telefone:</td>
                    <td>
                        <asp:TextBox ID="txttelefone" runat="server" Width="197px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="cboCidade" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Salvar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GVPessoa" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="id" />
                                <asp:BoundField DataField="NOME" HeaderText="Nome" />
                                <asp:BoundField DataField="TELEFONE" HeaderText="Telefone" />
                                <asp:BoundField DataField="Cidade.Descricao" HeaderText="Cidade" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
