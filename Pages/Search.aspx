<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/MainForm.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="practice.Pages.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="font-size: 20px">Tìm kiếm thông tin sinh viên</h3>
    <div class="d-flex flex-row" style="margin: 30px 0;">
        <input type="text" id="txtSearch" placeholder="Tìm kiếm sinh viên theo tên, email,..." />
        <button class="btn btn-search">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
    </div>
    <table class="table2">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Tên</th>
                <th scope="col">Email</th>
                <th scope="col">Giới tính</th>
                <th scope="col">Ngày sinh</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">SĐT</th>
                <th scope="col">Khoa</th>
                <th scope="col">Kĩ năng</th>
                <th scope="col">Ghi chú</th>
            </tr>
        </thead>
        <tbody id="tbody2"></tbody>
    </table>
</asp:Content>
