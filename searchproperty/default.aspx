<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="searchproperty._default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نظام البحث عن العقارات</title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <script type="text/javascript" >
        function checkEmptyFields() {
            if (document.getElementById('<%# txtBookNo.ClientID %>').value == '') {
                document.getElementById('<%# lblBookNo.ClientID %>').innerHTML = 'يجب ادخال رقم الكتاب';
                document.getElementById('<%# txtBookNo.ClientID %>').focus();
                return false;
            }
            else {
                document.getElementById('<%# lblBookNo.ClientID %>').innerHTML = '';
            }
            if (document.getElementById('<%# txtBookDate.ClientID %>').value == '') {
                document.getElementById('<%# lblBookDate.ClientID %>').innerHTML = 'يجب ادخال تاريخ الكتاب';
                document.getElementById('<%# txtBookDate.ClientID %>').focus();
                return false;
            }
            else {
                document.getElementById('<%# lblBookDate.ClientID %>').innerHTML = '';
            }
            if (document.getElementById('<%# txtHereInsightOffice.ClientID %>').value == '') {
                document.getElementById('<%# lblHereInsightOffice.ClientID %>').innerHTML = 'يجب ادخال الجهة الوارد منها الكتاب';
                document.getElementById('<%# txtHereInsightOffice.ClientID %>').focus();
                return false;
            }
            else {
                document.getElementById('<%# lblHereInsightOffice.ClientID %>').innerHTML = '';
            }
            if (document.getElementById('<%# txtInformedOffice.ClientID %>').value == '') {
                document.getElementById('<%# lblInformedOffice.ClientID %>').innerHTML = 'يجب ادخال الجهة المستعلمة عن العقار';
                document.getElementById('<%# txtInformedOffice.ClientID %>').focus();
                return false;
            }
            else {
                document.getElementById('<%# lblInformedOffice.ClientID %>').innerHTML = '';
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="asm" runat="server"></asp:ScriptManager>
        <asp:HiddenField ID="idHiddenField" runat="server" />
        <main>
            <div style="min-height:25px;background-color:black;">
                <asp:Label ID="lblToday" runat="server" ForeColor="white" Font-Size="Large"></asp:Label>
            </div>
            <header>
                <h1>نظام البحث عن العقارات</h1>
            </header>
            <caption>معلومات الكتاب</caption>
            <hr />
            <article>
                <section>
                    <table>
                        <tbody>
                            <tr>
                                <td>رقـم الكتـاب :</td>
                                <td>
                                    <asp:TextBox ID="txtBookNo" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:Label ID="lblBookNo" runat="server" CssClass="labeleror"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                </section>
                <section>
                    <table>
                        <tbody>
                            <tr>
                                <td>تاريخ الكتـاب :</td>
                                <td>
                                    <asp:TextBox ID="txtBookDate" runat="server" CssClass="textbox"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="cleDecisionDate" runat="server" Format="dd/MM/yyyy" PopupPosition="Left"
                                TargetControlID="txtBookDate"></ajaxToolkit:CalendarExtender>
                                    <asp:Label ID="lblBookDate" runat="server" CssClass="labeleror"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>

                </section>
                <section>
                    <table>
                        <tbody>
                            <tr>
                                <td>الجهة الوارد منها الكتـاب :</td>
                                <td>
                                    <asp:TextBox ID="txtHereInsightOffice" runat="server" CssClass="textbox"></asp:TextBox>
                                    <asp:Label ID="lblHereInsightOffice" runat="server" CssClass="labeleror"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                </section>
                <section>
                    <table>
                        <tbody>
                            <tr>
                                <td>الجهة المستعلمة عن العقار :</td>
                                <td>
                                    <asp:TextBox ID="txtInformedOffice" runat="server"  CssClass="textbox" ></asp:TextBox>
                                    <asp:Label ID="lblInformedOffice" runat="server" CssClass="labeleror"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>

                </section>
                <section>
                    <table>
                        <tbody>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="btnSaveMainDet" runat="server" Text="خـــزن" CssClass="button"
                                         OnClientClick="return checkEmptyFields()" OnClick="btnSaveMainDet_Click"/></td>
                            </tr>
                        </tbody>
                    </table>

                </section>
            </article>
            <footer>

            </footer>
        </main>
    </form>
</body>
</html>
