<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="appointment_mail.aspx.cs" Inherits="appointment_mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <h1 align="center">
        View Confirmed Appointments</h1>
    <div class="container">
        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="gv_todayappointment" runat="server" AutoGenerateColumns="False" CellPadding="4"
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="f_name" HeaderText="First Name" />
                    <asp:BoundField DataField="l_name" HeaderText="Last Name" />
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("email") %>' runat="server" ID="lblEmail" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:BoundField DataField="contact" HeaderText="Contact" />
                    <asp:BoundField DataField="age" HeaderText="Age" />
                     <asp:BoundField DataField="blood_grp" HeaderText="Blood Group" />
                    <asp:BoundField DataField="date" HeaderText="Date" />
                    <asp:BoundField DataField="time" HeaderText="time" />
                   
                   <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("appoint_id") %>'
                                OnClick="LinkButton1_Click">Remove</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                   
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView>
        </asp:Panel>
       
        
    </div>
</asp:Content>
