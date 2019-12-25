<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="appointment.aspx.cs" Inherits="appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
   
        $(document).ready(function () {
            $('.timepicker').timepicker();
            $('.datepicker').datepicker();

            $(".LinkButton2").click(function (e) {
               // GetSelectedRow(e);
//                var val1 = $('.timepicker').val();
//                var val2 = $('.datepicker').val();
//                if (val1 == "" || val2 == "") {
//                    alert("please select date and time for confirm appointment");
//                    return false;
//                }
            });
        });
    </script>
   
    <h1 align="center">
        Confirm/Remove Appointments</h1>
    <div class="container">
        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="gv_appoint" runat="server" AutoGenerateColumns="False" CellPadding="4"
                ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gv_appoint_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="f_name" HeaderText="First Name" />
                    <asp:BoundField DataField="l_name" HeaderText="Last Name" />
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("email") %>' runat="server" ID="lblEmail" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="email" HeaderText="Email" />--%>
                    <asp:BoundField DataField="contact" HeaderText="Contact" />
                    <asp:BoundField DataField="age" HeaderText="Age" />
                    <asp:BoundField DataField="blood_grp" HeaderText="Blood Group" />
                    <%--<asp:ButtonField ButtonType="Button" Text="Button" />--%>
                   
                    <asp:TemplateField HeaderText="Date Of Appointment">
                        <ItemTemplate>
                            <asp:TextBox ID="txtDate" runat="server" value='<%# Eval("date")%>'  type="text" class='<%# Eval("date").ToString() =="" ? "datepicker" : "datepicker1" %>' placeholder="Date"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time Of Appointment">
                        <ItemTemplate>
                            <asp:TextBox ID="txtTime" runat="server"  value='<%# Eval("time")%>'  type="text" class='<%# Eval("time").ToString() =="" ? "timepicker" : "timepicker1" %>' placeholder="Time"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                     <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="LinkButton2" CommandArgument='<%#Eval("appoint_id") %>'
                                OnClick="LinkButton2_Click" >Confirm Appointment</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
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
