<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Hospital.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HIS_APPLICATION.Pages.Register" %>

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

                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownListSalutation" CssClass="form-control" runat="server">
                                            <asp:ListItem Enabled="true" Text="Title" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Mr" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Mrs" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Master" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="Baby" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="B/O" Value="5"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*SELECT TITLE" ControlToValidate="DropDownListSalutation" SetFocusOnError="True" Font-Bold="True" InitialValue="0" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <label for="floatingName"></label>
                                    </div>
                                </div>                            
                                <div class="col-md-9">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*ENTER YOUR NAME" ControlToValidate="TextBoxName" ToolTip="ENTER YOUR COMPLETE NAME" ForeColor="#FF3300" SetFocusOnError="True" Display="Dynamic" Font-Bold="True"></asp:RequiredFieldValidator>
                                        <label for="floatingName">Your Name</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*ENTER YOUR EMAIL" ControlToValidate="TextBoxEmail" ToolTip="ENTER YOUR COMPLETE NAME" ForeColor="#FF3300" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <label for="floatingEmail">Your Email</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxMobile" runat="server" CssClass="form-control" placeholder="Mobile number" TextMode="Phone"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxMobile" Display="Dynamic" ErrorMessage="*ENTER MOBILE" Font-Bold="True" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*ENTER PROPER MOBILE" ControlToValidate="TextBoxMobile" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="[0-9]{10}" Display="Dynamic"></asp:RegularExpressionValidator>
                                        <label for="floatingPassword">Mobile Number</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">

                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownListGender" CssClass="form-control" placeholder="Gender" runat="server" aria-label="State" AutoPostBack="True">
                                            <asp:ListItem Enabled="true" Text="Select Gender" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Transgender" Value="3"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*SELECT GENDER" Display="Dynamic" SetFocusOnError="True" ControlToValidate="DropDownListGender" Font-Bold="True" Font-Underline="False" InitialValue="0" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <label for="floatingSelect">Gender</label>
                                    </div>
                                </div>
                           
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxAge" runat="server" CssClass="form-control" placeholder="Age" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*ENTER AGE" ControlToValidate="TextBoxAge" Display="Dynamic" Font-Bold="True" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*ENTER PROPER AGE" ControlToValidate="TextBoxAge" Display="Dynamic" MinimumValue="1" SetFocusOnError="True" MaximumValue="999" ForeColor="#FF3300"></asp:RangeValidator>
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
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBoxAddress" CssClass="form-control" runat="server" placeholder="Address" Font-Bold="False" TextMode="MultiLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAddress" Display="Dynamic" EnableViewState="True" ErrorMessage="*ENTER THE ADDRESS" Font-Bold="True" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <label for="floatingTextarea">Address</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <asp:DropDownList ID="DropDownListCity" CssClass="form-control" runat="server"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*ENTER THE CITY" ControlToValidate="DropDownListCity" Display="Dynamic" Font-Italic="False" Font-Bold="True" SetFocusOnError="True" InitialValue="Select City" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                            <label for="floatingCity">City</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <div class="form-floating mb-12">
                                        <asp:DropDownList ID="DropDownListState" CssClass="form-control" runat="server" OnSelectedIndexChanged="DropDownListState_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*ENTER THE STATE" ControlToValidate="DropDownListState" Display="Dynamic" SetFocusOnError="True" Font-Bold="True" InitialValue="Select State" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        <label for="floatingSelect">State</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="text-align-center">
                                    <asp:Button ID="ButtonSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
                                    <asp:Button ID="ButtonCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" />
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="text-align-center">
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                </div>
                            </div>
                            <!-- End floating Labels Form -->

                        </div>

                    </div>
                </div>
            </div>
        </section>

    </main>

</asp:Content>
