<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Testing.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="HIS_APPLICATION.Pages.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Patient Registration</h1>

        </div>
        <!-- End Page Title -->
        <section class="section">
            <div class="row">
                <div class="col-lg-6">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Registration Form</h5>
                            <div class="row g-3">
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control" placeholder="Your Name" ToolTip="Enter your Full Name"></asp:TextBox>
                                        <label for="floatingName">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                                        <label for="floatingEmail">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxMobile" runat="server" CssClass="form-control" placeholder="Mobile number" TextMode="Phone"></asp:TextBox>
                                        <label for="floatingPassword">Mobile Number</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" placeholder="Gender" runat="server" aria-label="State">
                                            <asp:ListItem Enabled="true" Text="Select Gender" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Transgender" Value="3"></asp:ListItem>
                                        </asp:DropDownList>
                                        <label for="floatingSelect">Gender</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxAge" runat="server" CssClass="form-control" placeholder="Age" TextMode="Number"></asp:TextBox>
                                        <label for="floatingPassword">Age</label>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


                <div class="col-lg-6">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title" style="color: white">__________________________

                            </h5>

                            <!-- Floating Labels Form -->
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Address" Font-Bold="False" TextMode="MultiLine"></asp:TextBox>
                                        <label for="floatingTextarea">Address</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <asp:DropDownList ID="DropDownListCity" CssClass="form-control" runat="server"></asp:DropDownList>
                                            <label for="floatingCity">City</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxPostal" CssClass="form-control" runat="server" placeholder="Postal Code"></asp:TextBox>
                                        <label for="floatingZip">Postal Code</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-floating mb-12">
                                        <asp:DropDownList ID="DropDownListState" CssClass="form-control" runat="server"></asp:DropDownList>
                                        <label for="floatingSelect">State</label>
                                    </div>
                                </div>
                                
                                <div class="text-align-center">
                                    <asp:Button ID="ButtonSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" />
                                    <asp:Button ID="ButtonCancel" CssClass="btn btn-danger" runat="server" Text="Button" />
                                </div>
                            </div>
                            <!-- End floating Labels Form -->

                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->

</asp:Content>
