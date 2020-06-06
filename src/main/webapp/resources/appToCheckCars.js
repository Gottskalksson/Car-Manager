$(function () {
    var checkedAll = $("#checked");
    var uncheckedAll = $("#unchecked");
    var checkboxes = $(".checkbox input");
    var services = [].slice.call($(".service"));

    function showOrHideService() {
        $('input[type="checkbox"]').click(function () {
            var inputValue = $(this).attr("value");
            $("." + inputValue).toggle();
        });
    }
    showOrHideService();

    checkedAll.on("click", function () {
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = true;
        }
        services.forEach(function (e) {
            e.style.display = "block";
        })
    });
    uncheckedAll.on("click", function () {
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = false;
        }
        console.log(services);
        services.forEach(function (e) {
            e.style.display = "none";
        })

    });



});