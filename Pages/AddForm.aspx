<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/MainForm.Master" AutoEventWireup="true" CodeBehind="AddForm.aspx.cs" Inherits="practice.Pages.AddForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="max-width: 800px" class="mx-auto border p-4 rounded shadow my-5">
        <h2 class="h2 mb-5">Thêm thông tin sinh viên</h2>
        <form class="row mb-5">
            <div class="col-md-12 row mb-3">
                <label for="name" class="form-label fw-bold col-sm-2">Họ và tên<span class="text-danger mx-1">*</span>:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" tabindex="0" required />
                </div>
            </div>
            <div class="col-md-12 row mb-3">
                <label for="email" class="form-label fw-bold col-sm-2">Email<span class="text-danger mx-1">*</span>:</label>
                <div class="col-sm-10">
                      <input type="email" class="form-control" id="email" required />
                </div>
            </div>
            <div class="col-sm-6 row mb-3">
                <label for="dob" class="form-label fw-bold col-md-4">Ngày sinh<span class="text-danger mx-1">*</span>:</label>
                <div class="col-md-8">
                    <input type="date" class="form-control" id="dob" required />
                </div>
            </div>
            <div class="col-sm-6 row mb-3">
                <label for="city" class="form-label fw-bold col-md-4">Nơi sống<span class="text-danger mx-2">*</span>:</label>
                <div class="col-md-8">
                <select id="city" class="form-select">
                    <option selected>Hà Nội</option>
                    <option>Hà Giang</option>
                    <option>TP.Hồ Chí Minh</option>
                    <option>Bắc Giang</option>
                    <option>Thanh Hóa</option>
                    <option>Hà Tĩnh</option>
                </select>
                </div>
            </div>
            <div class="col-md-12 mb-3">
                <p class="fw-bold">Ngành học<span class="text-danger mx-2">*</span>:</p>
                <div class="form-check">
                    <input
                        class="form-check-input"
                        type="radio"
                        id="web-dev"
                        name="major" />
                    <label class="form-check-label" for="web-dev">
                        Lập Trình Web</label>
                </div>
                <div class="form-check">
                    <input
                        class="form-check-input"
                        type="radio"
                        id="software-dev"
                        name="major" />
                    <label class="form-check-label" for="software-dev">
                        Lập Trình Phần Mềm</label>
                </div>
                <div class="form-check">
                    <input
                        class="form-check-input"
                        type="radio"
                        id="mobile-dev"
                        name="major" />
                    <label class="form-check-label" for="mobile-dev">
                        Lập Trình App Mobile</label>
                </div>
                <div class="form-check">
                    <input
                        class="form-check-input"
                        type="radio"
                        id="embeded-dev"
                        name="major" />
                    <label class="form-check-label" for="embeded-dev">
                        Lập Trình Nhúng</label>
                </div>
                <div class="form-check">
                    <input
                        class="form-check-input"
                        type="radio"
                        id="database-admin"
                        name="major" />
                    <label class="form-check-label" for="database-admin">
                        Quản trị cơ sở dữ liệu</label>
                </div>
            </div>
            <div class="col-md-12 d-flex flex-wrap mb-3">
                <p class="fw-bold w-100">Kĩ năng:</p>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill1" />
                    <label for="skill1">C/C++</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill2" />
                    <label for="skill2">C#</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill3" />
                    <label for="skill3">Java</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill4" />
                    <label for="skill4">Javascript</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill5" />
                    <label for="skill5">Python</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill6" />
                    <label for="skill6">Flutter</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill7" />
                    <label for="skill7">Database</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill8" />
                    <label for="skill8">Nodejs</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill9" />
                    <label for="skill9">Reactjs</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill10" />
                    <label for="skill10">ASP.NET</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill11" />
                    <label for="skill11">Spring boot</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill12" />
                    <label for="skill12">Django</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill13" />
                    <label for="skill13">Expressjs</label>
                </div>
                <div class="form-check mx-2">
                    <input class="form-check-input" type="checkbox" id="skill14" />
                    <label for="skill14">Ruby on Rails</label>
                </div>
            </div>
            <div class="col-md-12">
                <p class="fw-bold">Thông tin chú ý thêm về sinh viên:</p>
                <textarea class="form-control" rows="5" placeholder="Viết chi tiết thông tin cần lưu ý (nơi thực tập, quyền đặc cách...)...."></textarea>
            </div>
            <div class="col-md-12 row g-3 mt-4">
                <div class="col-sm-6">
                    <input class="btn btn-success w-100 btn-add" type="submit" value="Thêm" />
                </div>
                <div class="col-sm-6">
                    <input class="btn btn-danger w-100" type="button" value="Xóa tất cả" />
                </div>
            </div>
        </form>
    </div>
</asp:Content>
