﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="searchproperty._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <div style="min-height:25px;background-color:black;">
                <asp:Label ID="lblToday" runat="server" ForeColor="white" Font-Size="Large"></asp:Label>
            </div>
            <header>
                <h1>نظام البحث عن العقارات</h1>
            </header>
            <article>
                <section>
                    <table>
                        <tbody>
                            <tr>
                                <td>رقـم الكتـاب :</td>
                                <td>
                                    <asp:TextBox ID="txtBookNo" runat="server" CssClass="textbox"></asp:TextBox></td>
                                <asp:Label ID="lblBookNo" runat="server" CssClass="labeleror"></asp:Label>
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
                                    <asp:Label ID="lblBookDate" runat="server" CssClass="labeleror"></asp:Label>
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
                                    <asp:Label ID="lblHereInsightOffice" runat="server" CssClass="labeleror"></asp:Label>
                            </tr>
                        </tbody>
                    </table>
                </section>
                <section>
                    <table>
                        <tbody>
                            <tr>
                                <td>الجهة المستعلمة عن الكتـاب :</td>
                                <td>
                                    <asp:TextBox ID="txtInformedOffice" runat="server"  CssClass="textbox" ></asp:TextBox>
                                    <asp:Label ID="lblInformedOffice" runat="server" CssClass="labeleror"></asp:Label>
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
                                    <asp:Button ID="btnSaveMainDet" runat="server" Text="خـــزن" CssClass="button" /></td>
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
