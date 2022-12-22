<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/MainForm.Master" AutoEventWireup="true" CodeBehind="AddForm.aspx.cs" Inherits="practice.Pages.AddForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        
        <form>
            <div class="form">
                <h2 style="margin-bottom: 20px">Thêm thông tin sinh viên</h2>
                <div class="d-flex jc-between">
                    <div class="form-control jc-between">
                        <label for="txtStudentName">Họ tên(<span class="text-danger fw-bold form-label-text">*</span>):</label>
                        <div class="form-text">
                            <input type="text" name="txtStudentName" id="txtStudentName col-8" required tabindex="0" />
                        </div>
                    </div>
                    <div class="form-control jc-between">
                        <label for="txtStudentEmail">Email(<span class="text-danger fw-bold form-label-text">*</span>):</label>
                        <div class="form-text">
                            <input type="email" name="txtStudentEmail" id="txtStudentEmail" required />
                        </div>
                    </div>
                </div>

                <div class="d-flex jc-between">
                    <div class="form-control jc-between">
                        <label for="dpkStudentDob">Ngày sinh(<span class="text-danger fw-bold">*</span>):</label>
                        <input type="text" name="dpkStudentDob" class="form-text" id="dpkStudentDob" />
                    </div>
                    <div class="form-control jc-between">
                        <label for="txtStudentPhoneNumber" class="form-label-text">SĐT(<span class="text-danger">*</span>):</label>
                        <input type="text" name="txtStudentPhoneNumber" class="form-text" id="txtStudentPhoneNumber" />
                    </div>
                </div>

                <div class="form-control d-flex jc-between" style="width: 100%">
                    <label for="txtStudentAddress" class="form-text-label" style="width: 13%">Địa chỉ(<span class="text-danger">*</span>):</label>
                    <div class="form-text" style="width: 90%">
                        <input type="text" name="txtStudentAddress" id="txtStudentAddress" />
                    </div>
                </div>
                
                <div class="d-flex jc-between">

                    <div class="form-control">
                        <p>Giới tính(<span class="text-danger fw-bold">*</span>):</p>
                        <div class="form-radio">
                            <input type="radio" name="rdioStudentGender" class="rdio-btn" value="Nam" />
                            <label for="rdioStudentGender">Nam</label>
                        </div>
                        <div class="form-radio">
                            <input type="radio" name="rdioStudentGender" class="rdio-btn" value="Nữ" />
                            <label for="rdioStudentGender">Nữ</label>
                        </div>
                        <div class="form-radio">
                            <input type="radio" name="rdioStudentGender" class="rdio-btn" value="Khác" />
                            <label for="rdioStudentGender">Khác</label>
                        </div>
                    </div>

                    <div class="form-control d-flex jc-between">
                        <label for="sltStudentDep">Ngành học:</label>
                        <select id="sltStudentDep" class="form-text">
                            <option selected value="Công nghệ thông tin">Công nghệ thông tin</option>
                            <option value="Ngoại ngữ">Ngoại ngữ</option>
                            <option value="Luật">Luật</option>
                            <option value="Thiết kế thời trang">Thiết kế thời trang</option>
                            <option value="Công nghệ ô tô">Công nghệ ô tô</option>
                            <option value="Cơ khí">Cơ khí</option>
                            <option value="Điện tử">Điện tử</option>
                            <option value="Điện lạnh">Điện lạnh</option>
                        </select>
                    </div>
                </div>
                <div class="btn-container d-flex jc-end">
                    <button class="btn  btn-clear" id="">Xóa tất cả</button>
                    <button type="submit" class="btn btn-submit">Thêm</button>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
