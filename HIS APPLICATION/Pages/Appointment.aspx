<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Hospital.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="HIS_APPLICATION.Pages.Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Appointments</h1>
            <nav>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section">
            <div class="row">
                <div class="col-lg-6">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Appointment Scheduling for <asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label></h5>

                            <!-- General Form Elements -->
                            
                            <div class="row mb-3">
                                <label for="inputDate" class="col-sm-2 col-form-label">Date</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control">
                                </div>
                            </div><div class="row mb-3">
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="DropDownDepart" aria-label="Default select example" runat="server" CssClass="form-select" OnSelectedIndexChanged="DropDownDepart_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* select department" InitialValue="Select Department" SetFocusOnError="True" ControlToValidate ="DropDownDepart" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="DropDownDoc" aria-label="Default select example" runat="server" CssClass="form-select" ViewStateMode="Inherit"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* select doctor" SetFocusOnError="True" ControlToValidate="DropDownDoc" Font-Bold="True" Font-Strikeout="False" InitialValue="Select Doctor" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">Select Slot</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="DropDownSlot" aria-label="Default select example" runat="server" CssClass="form-select"></asp:DropDownList>
                                </div>
                            </div>
                            
                            <div class="row mb-3">
                                <label for="inputTime" class="col-sm-2 col-form-label">Time</label>
                                <div class="col-sm-10">
                                    <input type="time" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary">Fix Appointment</button>
                                </div>
                            </div>
                            <!-- End General Form Elements -->

                        </div>
                    </div>

                </div>

                <div class="col-lg-6">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">List of appointment scheduled</h5>

                            <!-- Advanced Form Elements -->
                            <form>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Position</th>
                                            <th scope="col">Age</th>
                                            <th scope="col">Start Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Brandon Jacob</td>
                                            <td>Designer</td>
                                            <td>28</td>
                                            <td>2016-05-25</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Bridie Kessler</td>
                                            <td>Developer</td>
                                            <td>35</td>
                                            <td>2014-12-05</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Ashleigh Langosh</td>
                                            <td>Finance</td>
                                            <td>45</td>
                                            <td>2011-08-12</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">4</th>
                                            <td>Angus Grady</td>
                                            <td>HR</td>
                                            <td>34</td>
                                            <td>2012-06-11</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">5</th>
                                            <td>Raheem Lehner</td>
                                            <td>Dynamic Division Officer</td>
                                            <td>47</td>
                                            <td>2011-04-19</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
                            <!-- End General Form Elements -->

                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>

</asp:Content>
