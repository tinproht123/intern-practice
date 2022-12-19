<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/MainForm.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="practice.Masterpages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Danh sách sinh viên</h2>
    <div class="container-md my-5">
        <div style="max-width: 1300px" class="mx-auto border">
            <table class="table table-striped table-bordered align-middle table-hover">
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
    <div
        class="modal fade"
        id="staticBackdrop"
        data-bs-backdrop="static"
        data-bs-keyboard="false"
        tabindex="-1"
        aria-labelledby="staticBackdropLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Xóa thông tin khỏi danh sách
                    </h5>
                    <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    Thông tin sẽ bị xóa hoàn toàn khỏi danh sách. Bạn chắc chắn chứ?
                </div>
                <div class="modal-footer">
                    <button
                        type="button"
                        class="btn btn-secondary"
                        data-bs-dismiss="modal">
                        Quay lại
                    </button>
                    <button type="button" class="btn btn-danger btn-delete-verify" data-bs-dismiss="modal">Xóa</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
