const data = [
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

// Cập nhật lại stt của danh sách
function updateIndex() {
  let list = document.getElementsByClassName("index");
  for (let i = 0; i < list.length; i++) {
    $(list[i]).html(i + 1);
  }
}

function deleteStudent() {}

// Load data lên danh sách
function loadList() {
  $.map(data, function (value, key) {
    let tr = `
    <tr>
        <th scope = "row" class="index"></th>
        <td>${value.name}</td>
        <td>${value.email}</td>
        <td>${value.dob}</td>
        <td>${value.city}</td>
        <td>${value.major}</td>
        <td>
            <button type="button" class="btn btn-delete" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa-solid fa-trash text-danger"></i></button>
            <button type="button" class="btn btn-edit"><i class="fa-solid fa-pen-to-square text-success"></i></button>
        </td>
    </tr>
    `;
    $("#tbody").append(tr);
    updateIndex();
  });
}

$(function () {
  loadList();
});
