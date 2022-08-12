<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HIS_APPLICATION.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Login to Jaypee Hospital</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../scripts/Newconent/img/favicon.png" rel="icon">
    <link href="../scripts/Newconent/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../scripts/Newconent/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../scripts/Newconent/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="../scripts/Newconent/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="../scripts/Newconent/vendor/quill/quill.snow.css" rel="stylesheet" />
    <link href="../scripts/Newconent/vendor/quill/quill.bubble.css" rel="stylesheet" />
    <link href="../scripts/Newconent/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="../scripts/Newconent/vendor/simple-datatables/style.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="../scripts/Newconent/css/style.css" rel="stylesheet" />

    <!-- =======================================================
  * Template Name: NiceAdmin - v2.3.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <main>
                <div class="container">

                    <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                                    <div class="d-flex justify-content-center py-4">
                                        <a href="index.html" class="logo d-flex align-items-center w-auto">
                                            <img src="../scripts/Newconent/img/logo.png" alt="">
                                            <span class="d-none d-lg-block">HIS LOGIN</span>
                                        </a>
                                    </div>
                                    <!-- End Logo -->

                                    <div class="card mb-3">

                                        <div class="card-body">

                                            <div class="pt-4 pb-2">
                                                <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                                                <p class="text-center small">Enter your username & password to login</p>
                                            </div>

                                            <form class="row g-3 needs-validation" novalidate>

                                                <div class="col-12">
                                                    <label for="yourUsername" class="form-label">Username</label>
                                                    <div class="input-group has-validation">
                                                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                                                        <asp:TextBox ID="TextUser" runat="server" CssClass="form-control"></asp:TextBox>
                                                        <div class="invalid-feedback">Please enter your username.</div>
                                                    </div>
                                                </div>

                                                <div class="col-12">
                                                    <label for="yourPassword" class="form-label">Password</label>
                                                    <asp:TextBox ID="TextPass" runat="server" CssClass="form-control" ValidateRequestMode="Enabled" CausesValidation="True" EnableViewState="True" TextMode="Password"></asp:TextBox>
                                                </div>

                                                <div class="col-12">
                                                    <div class="form-check">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary w-100" OnClick="Button1_Click" />
                                                </div>
                                                <div class="col-12">
                                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                                </div>
                                            </form>

                                        </div>
                                    </div>

                                    <div class="credits">
                                        <!-- All the links in the footer should remain intact. -->
                                        <!-- You can delete the links only if you purchased the pro version. -->
                                        <!-- Licensing information: https://bootstrapmade.com/license/ -->
                                        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                                        <div class="copyright">
                                            &copy; 2022 <strong><span>Jaypee Hospital</span></strong>. All Rights Reserved
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </section>

                </div>
            </main>
            <!-- End #main -->

            <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

            <!-- Vendor JS Files -->
            <script src="../scripts/Newconent/vendor/apexcharts/apexcharts.min.js"></script>
            <script src="../scripts/Newconent/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="../scripts/Newconent/vendor/chart.js/chart.min.js"></script>
            <script src="../scripts/Newconent/vendor/echarts/echarts.min.js"></script>
            <script src="../scripts/Newconent/vendor/quill/quill.min.js"></script>
            <script src="../scripts/Newconent/vendor/simple-datatables/simple-datatables.js"></script>
            <script src="../scripts/Newconent/vendor/tinymce/tinymce.min.js"></script>
            <script src="../scripts/Newconent/vendor/php-email-form/validate.js"></script>


            <!-- Template Main JS File -->
            <script src="../scripts/Newconent/js/main.js"></script>
        </div>
    </form>
</body>
</html>
