window.addEventListener('turbolinks:load', () => {

    $.getJSON( "https://keithvenh.github.io/biblelessLangs.json", function( data ) {
    
        $("#country").change(function () {
            var choice = $(this).val();
            console.log(choice);
            $("#language").empty();
            $("#language").append(`<optgroup id="country_label" label="${choice}"></optgroup>`)
            $.each (data, function( key, val) {
                if(val["country"] == choice) {
                $("#country_label").append(`<option value='${val["languageID"]}'>${val["name"]}</option>`)
            }
            });

        });

    });

})