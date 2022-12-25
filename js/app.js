let data = [
    {
        id: 1,
        name: "Nguyễn Gia Khánh Tùng",
        email: "tinproht123@gmail.com",
        gender: "Nam",
        dob: "30/01/2002",
        city: "Hà Nội",
        address: "Lĩnh Nam, Hoàng Mai, Hà Nội",
        phone: "0924808757",
        major: "Lập Trình Web",
        skills: ["Java", "Javascript", "Database", "C#", "ReactJs", "NodeJs"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 2,
        name: "Đào Nguyên Đạt",
        email: "dat123@gmail.com",
        gender: "Nam",
        dob: "23/02/2001",
        city: "Hà Nội",
        address: "Vĩnh Tuy, Hoàng Mai, Hà Nội",
        phone: "03757493925",
        major: "Lập Trình Web",
        skills: ["Java", "C#", "Python"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 3,
        name: "Lê Minh Tâm",
        email: "mhtam123@gmail.com",
        gender: "Nữ",
        dob: "13/01/2001",
        address: "Quận 8, Tp.Hồ Chí Minh",
        phone: "092575716535",
        major: "Lập Trình App Mobile",
        skills: ["C#", "Flutter"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 4,
        name: "Phạm Quang Nam",
        email: "quangnam123@gmail.com",
        gender: "Nam",
        dob: "26/08/2002",
        city: "Hà Nội",
        address: "Tôn Đức Thắng, Đống Đa, Hà Nội",
        phone: "038572562556",
        major: "Lập Trình Phần Mềm",
        skills: ["Database", "C#"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 5,
        name: "Đinh Văn Dũng",
        email: "vdung123@gmail.com",
        gender: "Nam",
        dob: "15/05/2002",
        city: "Hà Nội",
        address: "Triều Khúc, Đống Đa, Hà Nội",
        phone: "098573154615",
        major: "Lập Trình Phần Mềm",
        skills: ["Database", "C#", "Java", "Spring Boot"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 6,
        name: "Trịnh Thị Xuân Mai",
        email: "maitrnh@gmail.com",
        gender: "Nữ",
        dob: "22/11/2002",
        address: "Giao Thủy, Nam Định",
        phone: "0937518591745",
        major: "Lập Trình Web",
        skills: ["Database", "C#", "Java", "Spring Boot"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
];

let id = 0; // Biến lưu giữ id của item trong data

// Cập nhật lại stt của danh sách
function updateIndex() {
    let list = document.getElementsByClassName("index");
    for (let i = 0; i < list.length; i++) {
        $(list[i]).html(i + 1);
    }
}

function addData() {
    let name = $("#name").val()
    let email = $("#email").val()
    let dob = $("#dob").val()
    let city = $("#city").find(":selected").val()
    let major = $("input[name=major]:checked").val()

    console.log(name, email, dob, city, major)
}


// Load data lên danh sách
function loadList() {
    $.map(data, function (value, key) {
        let skillsString = ''
        value.skills.map(item => skillsString += (item + ", "))
        let tr = `
            <tr id="item-${value.id}">
                <td><input type="checkbox" name="chkItem" /></td>
                <td scope = "row" class="index"></td>
                <td>${value.name}</td>
                <td>${value.email}</td>
                <td>${value.gender}</td>
                <td>${value.dob}</td>
                <td>${value.address}</td>
                <td>${value.phone}</td>
                <td>${value.major}</td>
                <td>${skillsString}</td>
                <td>${value.info}</td>
                <td>
                    <button type="button" data-target="${value.id}" class="btn btn-delete tooltip">
                        <i class="fa-solid fa-trash text-danger"></i>
                        <span class='tooltip-text'>Xoá</span>
                    </button>
                    <button type="button" class="btn btn-edit tooltip">
                        <i class="fa-solid fa-pen-to-square text-success"></i>
                        <span class='tooltip-text'>Sửa</span>
                    </button>
                </td>
            </tr>
            `;
        $("#tbody").append(tr);
        updateIndex();
    });
}

/*function loadData() {
    $.getJSON("../data/data.json", function (json) {
        $.each(json, function (key, value) {
            let tr = `
                <tr id="item-${value.id}">
                    <th scope = "row" class="index"></th>
                    <td>${value.name}</td>
                    <td>${value.email}</td>
                    <td>${value.dob}</td>
                    <td>${value.city}</td>
                    <td>${value.major}</td>
                    <td>
                        <button type="button" data-target="${value.id}" class="btn btn-delete" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa-solid fa-trash text-danger"></i></button>
                        <button type="button" class="btn btn-edit"><i class="fa-solid fa-pen-to-square text-success"></i></button>
                    </td>
                </tr>
             `;
            $("#tbody").append(tr);
            updateIndex();
        })
    })
}*/

$(function () {
    loadList()

    $(".btn-delete").click(function () {
        id = Number($(this).data("target"))
        console.log(id)
    });

    $(".btn-delete-verify").click(function () {
        let index = data.findIndex(item => item.id === id)
        if (index !== null) {
            data.splice(index, 1)
            $("#item-" + id).remove()
            id = 0;
        }
    })

    $("body").tooltip({ selector: '[data-bs-toggle=tooltip]' });

    $(".btn-add").click(addData());

    $("#dpkStudentDob").datepicker();

    $("#add-form-overlay").click(function () {
        $("#add-form-modal").css("display", "none")
    })

    $(".btn-add").click(function (e) {
        e.preventDefault()
        $("#add-form-modal").css("display", "block")
    })

    $(".btn-cancel").click(function (e) {
        e.preventDefault()
        $("#add-form-modal").css("display", "none")
    })

    $("#chkAllBox").click(function () {
        if ($(this).checked) {
            console.log("Hello")
            $("input[name='chkItem']").prop('checked', true)
        } else {
            $("input[name='chkItem']").prop('checked', false)
        }
    })

    $(".btn-submit").click(function (e) {
        e.preventDefault()
        var name = $("#txtStudentName").val()
        var email = $("#txtStudentEmail").val()
        var dob = $('#dpkStudentDob').datepicker().val();
        var phone = $('#txtStudentPhoneNumber').val()
        var address = $('#txtStudentAddress').val()
        var gender = $('input[name="rdioStudentGender"]:checked').val()
        var major = $('#sltStudentDep option:selected').val()
        var info = $('#txtAreaStudentInfo').val()

        let skillsString = ''
        var skills = []
        $('input[name="chkStudentSkill"]:checked').each(function () {
            skills.push($(this).val())
        })
        skills.map(item => skillsString += (item + ", "))


        let tr = `
            <tr id="item-${data.length}">
                <td><input type="checkbox" name="chkItem" /></td>
                <td scope = "row" class="index"></td>
                <td>${name}</td>
                <td>${email}</td>
                <td>${gender}</td>
                <td>${dob}</td>
                <td>${address}</td>
                <td>${phone}</td>
                <td>${major}</td>
                <td>${skillsString}</td>
                <td>${info}</td>
                <td>
                    <button type="button" data-target="${data.length}" class="btn btn-delete tooltip">
                        <i class="fa-solid fa-trash text-danger"></i>
                        <span class='tooltip-text'>Xoá</span>
                    </button>
                    <button type="button" class="btn btn-edit tooltip">
                        <i class="fa-solid fa-pen-to-square text-success"></i>
                        <span class='tooltip-text'>Sửa</span>
                    </button>
                </td>
            </tr>
            `;
        $("#tbody").append(tr);
        data.push({
            id: data.length,
            name,
            email,
            dob,
            address,
            phone,
            major,
            skills
            })
        updateIndex();
        $("#add-form-modal").css("display", "none")
    })

    $('#chkAllBox').click(function () {
        if (!$('#chkAllBox').prop('checked')) {
            $('input[name="chkItem"').prop('checked', false)
        } else {
            $('input[name="chkItem"').prop('checked', true)
        }
    })

    $('.btn-clear').click(function (e) {
        e.preventDefault()
        $('input[type="text"]').val("")
        $('input[type="email"').val("")
        $('textarea').val("")
        $('input[type="radio"').prop("checked", false)
        $('input[type="checkbox"').prop("checked", false)
        $('select option[value="Công nghệ thông tin"]').prop("selected", true)
    })
});