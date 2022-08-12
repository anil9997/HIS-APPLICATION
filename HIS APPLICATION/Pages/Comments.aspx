<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Hospital.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="HIS_APPLICATION.Pages.Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <h3>Comments for the hospital</h3>
        <section class="section">
            <div class="row">
                <div class="col-lg-6">
                    <div class="card" align="center">
                        <div class="card body" >
                            <h5 class="card-title" > <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#FF3300" Font-Bold="True" Font-Size="Large" CssClass="align-items-lg-center"></asp:Label></h5>
                        <table>
                            <thead>
                                <tr>
                                    <td>   Enter Name: </td>
                                    <td>
                                        <asp:TextBox ID="TextName" runat="server" placeholder="UserName"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>   Enter Subject:</td>
                                    <td>
                                        <asp:TextBox ID="TextSubject" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td valign="top">   Comments:</td>
                                    <td>
                                        <asp:TextBox ID="TextComment" runat="server" Columns="40" Rows="5" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="SubmitBtn" runat="server" Text="Summit" OnClientClick="btnSubmit_click" OnClick="SubmitBtn_Click" /></td>
                                </tr>
                            </thead>
                        </table>
                    </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <asp:Repeater ID="RepeaterComment" runat="server">
                            <HeaderTemplate>
                                <table style="border: 1px solid #0000FF; width: 500px" cellpadding="0">
                                    <tr style="background-color: #FF6600; color: #000000; font-size: large; font-weight: bold;">
                                        <td colspan="2">
                                            <b>Comments</b>
                                        </td>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr style="background-color: #EBEFF0">
                                    <td>
                                        <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 500px">
                                            <tr>
                                                <td>Subject:
                                        <asp:Label ID="LabelSubject" runat="server" Text='<%# Eval("Subject") %>' Font-Bold="true"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="LabelComment" runat="server" Text='<%#Eval ("CommentOn") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="background-color: aqua; border-top: 1px dotted dashed; border-bottom: 1px solid double; width: 500px">
                                            <tr>
                                                <td>Posted By:
                                        <asp:Label ID="LabelUser" runat="server" Font-Bold="true" Text='<%# Eval("Username") %>'></asp:Label></td>
                                                <td>Posted on:
                                        <asp:Label ID="LabelDate" runat="server" Font-Bold="true" Text='<%# Eval("Post_Date") %>'></asp:Label></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                <table>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
       </div>
</div>
</section>             
    </main>
</asp:Content>

