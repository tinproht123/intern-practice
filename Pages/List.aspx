<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages/MainForm.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="practice.Masterpages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin: 20px">Danh sách sinh viên</h2>
    <button class="btn btn-add">Thêm thông tin</button>
    <button class="btn btn-remove-all">Xóa</button>
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
        <form>
            <div class="form">
                <button class="btn btn-cancel text-danger tooltip">
                    <i class="fa-solid fa-x"></i>
                    <span class="tooltip-text">Thoát</span>
                </button>
                <h2 style="margin-bottom: 20px">Thêm thông tin sinh viên</h2>
                <div class="d-flex jc-between">
                    <div class="form-control jc-between">
                        <label for="txtStudentName" class="fw-bold">Họ tên(<span class="text-danger fw-bold form-label-text">*</span>):</label>
                        <div class="form-text">
                            <input type="text" name="txtStudentName" id="txtStudentName" required tabindex="0" />
                        </div>
                    </div>
                    <div class="form-control jc-between">
                        <label for="txtStudentEmail" class="fw-bold">Email(<span class="text-danger fw-bold form-label-text">*</span>):</label>
                        <div class="form-text">
                            <input type="email" name="txtStudentEmail" id="txtStudentEmail" required />
                        </div>
                    </div>
                </div>

                <div class="d-flex jc-between">
                    <div class="form-control jc-between">
                        <label for="dpkStudentDob" class="fw-bold">Ngày sinh(<span class="text-danger fw-bold">*</span>):</label>
                        <input type="text" name="dpkStudentDob" class="form-text" id="dpkStudentDob" />
                    </div>
                    <div class="form-control jc-between">
                        <label for="txtStudentPhoneNumber" class="form-label-text fw-bold">SĐT(<span class="text-danger">*</span>):</label>
                        <input type="text" name="txtStudentPhoneNumber" class="form-text" id="txtStudentPhoneNumber" />
                    </div>
                </div>

                <div class="form-control d-flex jc-between" style="width: 100%">
                    <label for="txtStudentAddress" class="form-text-label fw-bold" style="width: 13%">Địa chỉ(<span class="text-danger">*</span>):</label>
                    <div class="form-text" style="width: 90%">
                        <input type="text" name="txtStudentAddress" id="txtStudentAddress" />
                    </div>
                </div>

                <div class="d-flex jc-between">

                    <div class="form-control">
                        <p class="fw-bold">Giới tính(<span class="text-danger fw-bold">*</span>):</p>
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
                        <label for="sltStudentDep">Ngành học(<span class="text-danger fw-bold">*</span>)::</label>
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
                <div style="margin-inline: 15px; margin-bottom: 20px">
                <p class="fw-bold" style="margin-bottom: 20px">Kĩ năng(<span class="text-danger fw-bold">*</span>):</p>
                <div class="skill-container">
                    <div class="form-radio">
                        <input type="checkbox" id="skill1" name="chkStudentSkill" value="C/C++" />
                        <label for="skill1">C/C++</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill2" name="chkStudentSkill" value="Java" />
                        <label for="skill2">Java</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill3" name="chkStudentSkill" value="C#" />
                        <label for="skill3">C#</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill4" name="chkStudentSkill" value="Python" />
                        <label for="skill4">Python</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill5" name="chkStudentSkill" value="Javascript" />
                        <label for="skill5">Javascript</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill6" name="chkStudentSkill" value="Database" />
                        <label for="skill6">Database</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill7" name="chkStudentSkill" value="Golang" />
                        <label for="skill7">Golang</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill8" name="chkStudentSkill" value="Nodejs" />
                        <label for="skill8">NodeJs</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill9" name="chkStudentSkill" value="Ruby on rails" />
                        <label for="skill9">Ruby on rails</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill10" name="chkStudentSkill" value="Spring boot" />
                        <label for="skill10">Spring boot</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill11" name="chkStudentSkill" value="ASP.NET" />
                        <label for="skill11">ASP.NET</label>
                    </div>
                    <div class="form-radio">
                        <input type="checkbox" id="skill12" name="chkStudentSkill" value="PHP" />
                        <label for="skill12">PHP</label>
                    </div>
                </div>
                    </div>
                <div style="margin-inline: 15px;" class="d-flex flex-column">
                    <label for="txtAreaStudentInfo" class="fw-bold" style="margin-bottom: 20px">Ghi chú(<span class="text-danger fw-bold">*</span>):</label>
                    <textarea id="txtAreaStudentInfo" rows="8" style="padding: 15px" placeholder="Thông tin thêm về sinh viên (học bổng, nơi thực tập,...)..." requỉred="true"></textarea>
                </div>
                <div class="btn-container d-flex jc-end">
                    <button class="btn btn-clear" id="">Xóa tất cả</button>
                    <button type="submit" class="btn btn-submit">Thêm</button>
                </div>
            </div>
        </form>
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
