let data = [
    {
        id: 1,
        name: "Nguyễn Gia Khánh Tùng",
        email: "tinproht123@gmail.com",
        dob: "30/01/2002",
        city: "Hà Nội",
        major: "Lập Trình Web",
        skills: ["Java", "Javascript", "Database", "C#", "ReactJs", "NodeJs"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 2,
        name: "Đào Nguyên Đạt",
        email: "dat123@gmail.com",
        dob: "23/2/2001",
        city: "Hà Nội",
        major: "Lập Trình Web",
        skills: ["Java", "C#", "Python"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 3,
        name: "Lê Minh Tâm",
        email: "mhtam123@gmail.com",
        dob: "13/1/2001",
        city: "TP.Hồ Chí Minh",
        major: "Lập Trình App Mobile",
        skills: ["C#", "Flutter"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 4,
        name: "Phạm Quang Nam",
        email: "quangnam123@gmail.com",
        dob: "26/8/2002",
        city: "Hà Nội",
        major: "Lập Trình Phần Mềm",
        skills: ["Database", "C#"],
        info: "Sinh viên năm 3, đang trong thời gian thực tập tại Simax",
    },
    {
        id: 5,
        name: "Đinh Văn Dũng",
        email: "vdung123@gmail.com",
        dob: "15/5/2002",
        city: "Hà Nội",
        major: "Lập Trình Phần Mềm",
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
        let tr = `
    <tr id="item-${value.id}">
        <th scope = "row" class="index"></th>
        <td>${value.name}</td>
        <td>${value.email}</td>
        <td>${value.dob}</td>
        <td>${value.city}</td>
        <td>${value.major}</td>
        <td>
            <button type="button" data-target="${value.id}" class="btn btn-delete" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa-solid fa-trash text-danger" data-bs-toggle="tooltip" data-bs-title="Xóa"></i></button>
            <button type="button" class="btn btn-edit"><i class="fa-solid fa-pen-to-square text-success"  data-bs-toggle="tooltip" data-bs-title="Sửa"></i></button>
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
});