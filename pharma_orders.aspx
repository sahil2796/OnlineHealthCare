<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pharma_orders.aspx.cs" Inherits="pharma_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333"
        GridLines="None" onselectedindexchanged="gvOrders_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="datetime" HeaderText="Date" />
             <asp:TemplateField HeaderText="Patient's Name">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("patient_name") %>' runat="server" ID="lblName" />
                        </ItemTemplate>
                    </asp:TemplateField>
           <%-- <asp:BoundField DataField="patient_name" HeaderText="Patient's Name" />--%>
            <asp:BoundField DataField="medicine_name" HeaderText="Medicine Name " />
            <asp:BoundField DataField="medicine_type" HeaderText="Medicine Type " />
            <asp:BoundField DataField="medicine_sensitive" HeaderText="Medicine Sensitivity" />
            <asp:BoundField DataField="mobile_no" HeaderText="Mobile No." />
            <asp:BoundField DataField="address" HeaderText="Address " />
            <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Deliver</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("prescription_id") %>'
                                OnClick="LinkButton2_Click">Remove</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
            <%--<asp:ButtonField ButtonType="Button" Text="Deliver"   />--%>
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

