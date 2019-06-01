// Make sure we wait to attach our handlers until the DOM is fully loaded.
$(function() {
    $(".change-devour").on("click", function(event) {
        var burger_id = $(this).data("burger_id");
        var newDevour = $(this).data("newdevour");

        var newDevourState = {
            devoured: newDevour
        };

        // Send the PUT request.
        $.ajax("/api/burgers/" + burger_id, {
            type: "PUT",
            data: newDevourState
        }).then(
            function() {
                console.log("changed devour to", newDevour);
                // Reload the page to get the updated list
                location.reload();
            }
        );
    });

    $(".create-form").on("submit", function(event) {
        // Make sure to preventDefault on a submit event.
        event.preventDefault();

        var newBurger = {
            burger_name: $("#br").val().trim(),
            ingredient_1: $("[name=ingredient_1]:checked").val(),
            ingredient_2: $("[name=ingredient_2]:checked").val(),
            ingredient_3: $("[name=ingredient_3]:checked").val(),
            ingredient_4: $("[name=ingredient_4]:checked").val(),
            ingredient_5: $("[name=ingredient_5]:checked").val(),
            burger_picture: $("#bp").val().trim()
        };

        // Send the POST request.
        $.ajax("/api/burgers", {
            type: "POST",
            data: newBurger
        }).then(
            function() {
                console.log("created new burger");
                // Reload the page to get the updated list
                location.reload();
            }
        );
    });

    $(".delete-burger").on("click", function(event) {
        var burger_id = $(this).data("burger_id");

        // Send the DELETE request.
        $.ajax("/api/burgers/" + burger_id, {
            type: "DELETE"
        }).then(
            function() {
                console.log("deleted burger", burger_id);
                // Reload the page to get the updated list
                location.reload();
            }
        );
    });

});