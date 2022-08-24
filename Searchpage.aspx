<%@ Page Title="TLD Search Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
        <div class="TLD-Search">
            <h1 class="TLD-Search-Title">Search TLD's</h1>
            <asp:textbox class="TLD-Search-Box" ID="TB_TLD_Search" placeholder="Search TLD's" runat="server"></asp:textbox>
            <asp:button ID="BTN_Search" runat="server" class="TLD-Search-BTN" text="Search"/>
        </div>
        <div class="TLD-Search">
            <asp:GridView ID="GridView1" CssClass="TLD-Search-Results" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="tldName" HeaderText="tldName" SortExpression="tldName" Visible="False" />
                    <asp:TemplateField HeaderText="TLD Name">
                        <ItemTemplate>
                            <asp:Label ID="LBL_TLD_Name" runat="server" Text='<%# Eval("tldName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Express Interest">
                        <ItemTemplate>
                            <asp:CheckBox ID="CB_Select" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FastHostsV1ConnectionString %>" SelectCommand="SELECT [tldName] FROM [TLDs] WHERE ([tldName] LIKE '%' + @tldName + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TB_TLD_Search" Name="tldName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p class="TLD-Info">To express interest select the one you want and press the express interest button.</p>
        </div>
        <div class="TLD-Search">
             <asp:button ID="BTN_Express_Interest" runat="server" class="TLD-Search-BTN" text="Express Interest" OnClick="BTN_Express_Interest_Click" Width="150px"/>
        </div>
    </form>
</asp:Content>

