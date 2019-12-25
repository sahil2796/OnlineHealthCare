<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="doc_prescription.aspx.cs" Inherits="doc_prescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 align="center">
        Prescription</h1>
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <asp:TextBox ID="txtName" runat="server" placeholder="Patient's Name" ValidationGroup="btnPrescribe"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_name" runat="server" ControlToValidate="txtName"
                        ErrorMessage="Please Enter Patient's Name" ValidationGroup="vg_prescribe"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons">polymer</i>
                    <asp:TextBox ID="txtMedicineName" runat="server" placeholder="Medicine Name" ValidationGroup="btnPrescribe"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_medicinename" runat="server" ControlToValidate="txtMedicineName"
                        ErrorMessage="Please Enter Medicine Name" ValidationGroup="vg_prescribe"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons">polymer</i>
                    <asp:TextBox ID="txtMedicineType" runat="server" placeholder="Medicine Type" ValidationGroup="btnPrescribe"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_medicinetype" runat="server" ControlToValidate="txtMedicineType"
                        ErrorMessage="Please Enter Medicine Type" ValidationGroup="vg_prescribe"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6">
                <i class="material-icons">polymer</i>
                    <asp:TextBox ID="txtMedicineSensitive" runat="server" placeholder="Medicine Sensitivity"
                        ValidationGroup="btnPrescribe"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_medicinesensitive" runat="server" ControlToValidate="txtMedicineType"
                        ErrorMessage="Please Enter Medicine Sensitivity" ValidationGroup="vg_prescribe"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">contact_phone</i>
                    <asp:TextBox ID="txtMobile" runat="server" placeholder="Patient's Mobile No." ValidationGroup="btnPrescribe"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_mobile" runat="server" ControlToValidate="txtMobile"
                        ErrorMessage="Please Enter Mobile No." ValidationGroup="vg_prescribe"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">location_on</i>
                    <asp:TextBox ID="txtAddress" runat="server" placeholder="Patient's Address" ValidationGroup="btnPrescribe"
                        TextMode="multiline" Columns="50" Rows="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_address" runat="server" ControlToValidate="txtAddress"
                        ErrorMessage="Please Enter Patient's Address" ValidationGroup="vg_prescribe"></asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:Button ID="btnPrescribe" runat="server" Text="Prescribe" class="waves-effect waves-light btn right"
                OnClick="btnPrescribe_Click"></asp:Button>
        </div>
    </div>
    <asp:GridView ID="gvPrescription" runat="server" AutoGenerateColumns="False" CellPadding="4"
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="datetime" HeaderText="Date" />
            <asp:BoundField DataField="patient_name" HeaderText="Patient's Name" />
            <asp:BoundField DataField="medicine_name" HeaderText="Medicine Name " />
            <asp:BoundField DataField="medicine_type" HeaderText="Medicine Type " />
            <asp:BoundField DataField="medicine_sensitive" HeaderText="Medicine Sensitivity" />
            <asp:BoundField DataField="mobile_no" HeaderText="Mobile No." />
            <asp:BoundField DataField="address" HeaderText="Address " />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("prescription_id") %>'
                        OnClick="LinkButton2_Click">Remove</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
</asp:Content>
