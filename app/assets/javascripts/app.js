$(function(){

  navigateTo();
  changeStudent(studentCall);
})

function navigateTo(){
  $("#toAbout").click(function(){
    $(".main").moveTo(2);
  });
  $("#toStudents").click(function(){
    $(".main").moveTo(3);
  });
  $("#toGa").click(function(){
    $(".main").moveTo(4);
  });
}

function changeStudent(callback){
  $(".get_student").click(function(){
    studentId = this.id;
    $.getJSON("students/"+studentId, callback);
  })
}

function studentCall(student){
  var studentInfo = student;

  var list = $("#student-info");
  var name = $("<p>").text(student.name).attr("class", "name");
  var github= $("<li>").html($("<a>").text("github").attr({href: "http://github.com/" + student.github, class: "contact"}));
  var email = $("<li>").html($("<a>").text("email").attr({href: "mailto:" + student.email, class: "contact"}));
  var website = $("<li>").html($("<a>").text("website").attr({href: student.website, class: "contact"}));
  var picture = $("<img>").attr({src: "/assets/" + student.picture, class: "photo"});
  var blurb = $("<p>").text(student.blurb).attr("class", "blurb");
  list.empty().append(picture).append(name).append(blurb).append(github).append(email).append(website);


}
