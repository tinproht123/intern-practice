<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/MainForm.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="practice.Masterpages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin: 20px">Danh sách sinh viên</h2>
    <a href="AddForm.aspx" class="btn btn-add" style="margin-bottom: 20px"> 
        Thêm thông tin
    </a>
    <button class="btn btn-remove-all" style="margin-bottom: 20px">Xóa</button>
    <table class="table">
        <thead>
            <tr>
                <th>
                    <input type="checkbox" id="chkAllBox" />
                </th>
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
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody id="tbody"></tbody>
    </table>


    <div class="modal">
        <div class="modal-confirm-remove">
            <h3 style="margin: 20px 0">Bạn có chắc muốn xóa thông tin này chứ?</h3>
            <div class="d-flex flex-row jc-end">
                <button class="btn btn-return">Quay lại</button>
                <button class="btn btn-confirm-remove">Xóa</button>
            </div>
        </div>
        <div class="modal-overlay" id="add-form-overlay"></div>
    </div>

</asp:Content>
