<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication2.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Prodect Image</th>
          <th scope="col">Name</th>
          <th scope="col">Price</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>
              <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl="https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg" />
            </td>
          <td>Photoset</td>
          <td>250 THB</td>
        </tr>
        <tr>
          <th scope="row" style="height: 37px">2</th>
          <td style="height: 37px">
              <asp:Image ID="Image2" runat="server" Height="180px" ImageUrl="https://www.befunky.com/images/wp/wp-2014-08-milky-way-1023340_1280.jpg?auto=webp&amp;format=jpg&amp;width=1200&amp;crop=16:9" />
            </td>
          <td style="height: 37px">Ticket</td>
          <td style="height: 37px">350 THB</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>
              <asp:Image ID="Image3" runat="server" Height="180px" ImageUrl="https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg" />
            </td>
          <td>Mug</td>
          <td>350 THB</td>
        </tr>
      </tbody>
    </table>
    <asp:GridView ID="gridViewProductList" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gridViewProductList_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ไอดี" />
            <asp:TemplateField HeaderText="รูปสินค้า">
                <ItemTemplate>
                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("productImage") %>' Width="120" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="productName" HeaderText="ชื่อสินค้า" />
            <asp:BoundField DataField="productDescription" HeaderText="คำอธิบายสินค้า" />
            <asp:BoundField DataField="price" HeaderText="ราคา" />

        </Columns>
    </asp:GridView>
</asp:Content>
