<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/MainForm.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="practice.Masterpages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Danh sách sinh viên</h2>
    <div class="container-md my-5">
      <div style="max-width: 1300px" class="mx-auto border">
        <table class="table table-stripped table-bordered align-middle table-hover">
          <thead class="table-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Tên</th>
              <th scope="col">Email</th>
              <th scope="col">Ngày sinh</th>
              <th scope="col">Nơi sống</th>
              <th scope="col">Khoa</th>
              <th scope="col"></th>
            </tr>
          </thead>
          <tbody id="tbody"></tbody>
        </table>
      </div>
    </div>
</asp:Content>
