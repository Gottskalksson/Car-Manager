$(function () {

    var motDate = $("#motDate");
    var motLabel = $("#motLabel");

    $("select#typeService").change(function(){

        var selectedTypeService = $(this).children("option:selected").val();

        if (selectedTypeService === "Przegląd") {
            motDate.css("visibility", "visible");
            motLabel.css("visibility", "visible");
        } else {
            motDate.css("visibility", "hidden");
            motLabel.css("visibility", "hidden");
        }

    });

    $("select#car").change(function(){

        var carId = $(this).children("option:selected").val();

        $.ajax({
            url: "http://localhost:8080/dashboard/cars/" + carId,
            method: "GET",
            contentType: "application/json"
        }).done(function (res) {
            var year = res.slice(0, 4);
            var month = res.slice(5, 7);
            var day = res.slice(8, 10);
            var expirationDate = day + "-" + month + "-" + year;
            motDate.attr("value", expirationDate);

        }).fail(function (res) {
            alert("Brak daty przeglądu w tym aucie!");
        })

    });

    function checkMotDate() {
        var carId = $("select#car").children("option:selected").val();

        $.ajax({
            url: "http://localhost:8080/dashboard/cars/" + carId,
            method: "GET",
            contentType: "application/json"
        }).done(function (res) {
            var year = res.slice(0, 4);
            var month = res.slice(5, 7);
            var day = res.slice(8, 10);
            var expirationDate = day + "-" + month + "-" + year;
            motDate.attr("value", expirationDate);

        }).fail(function (res) {
            alert("Brak daty przeglądu w tym aucie!");
        })
    }

    checkMotDate();

});