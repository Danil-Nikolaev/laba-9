function show_result(data){
    var result = document.getElementById("result");
    result.innerHTML = '<table border="1"><tr>'+
    '<td>Наибольший общий делитель</td><td>Наименьшее общее кратное</td></tr><tr><td id="res1">'+
    data.value_one+
    '</td><td id="res2">'+
    data.value_two+
    "</td></tr></table>"
}
$(document).ready(function(){
    $("#calc_form").bind("ajax:success",
    function(xhr, data, status) {
    // data is already an object
    show_result(data)
    })
}) 