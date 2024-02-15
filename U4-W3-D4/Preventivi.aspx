<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preventivi.aspx.cs" Inherits="U4_W3_D4.Preventivi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Preventivo Auto</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center mt-4">Creazione Preventivo Personalizzato</h2>
            <div class="row">
                <!-- Colonna per il form -->
                <div class="col-md-4">
                    <div>
                        <label class="fs-4 fw-bold me-2 mb-5">Auto</label>
                        <asp:DropDownList ID="ddlAuto" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlAuto_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <div>
                        <asp:Label ID="lblPrezzoBase" runat="server" Text=""></asp:Label>
                    </div>
                    <div>
                        <label class="fs-4 fw-bolder mb-2">Optional:</label>
                        <asp:CheckBoxList ID="cblOptional" runat="server"></asp:CheckBoxList>
                    </div>
                    <div>
                        <label class="mt-3 fw-bolder fs-4 my-5">Garanzia:</label>
                        <asp:DropDownList ID="ddlGaranzia" runat="server"></asp:DropDownList>
                    </div>
                    <div>
                        <asp:Button ID="btnCalcola" CssClass="btn btn-dark mt-4 fw-bold" runat="server" OnClick="btnCalcola_Click" Text="Calcola Preventivo" />
                    </div>
                </div>

                <!-- Colonna per l'immagine -->
                <div class="col-md-8">
                    <asp:Image ID="imgAuto" runat="server" CssClass="img-fluid" />
                </div>
            </div>
        </div>
    </form>
    <asp:Literal ID="ltlRisultato" runat="server"></asp:Literal>
</body>
</html>
