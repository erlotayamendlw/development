$('.js-example-basic-single').select2({
    placeholder: 'Select an option',
    theme: "classic"
});

$('b[role="presentation"]').hide();
$('.select2-selection__arrow').hide();

let dropdown = $('.js-example-basic-single');

dropdown.empty();

dropdown.append('<option selected="true" disabled>Choose a VIP ID/Name</option>');
dropdown.prop('selectedIndex', 0);


const url = 'https://amba-tst-api-app.azurewebsites.net/vip/GetAllVIPS';

// Populate dropdown with list of provinces
$.getJSON(url, function (data) {
    $.each(data, function (key, entry) {
        if (entry.FriendlyName != "") {
            dropdown.append($('<option></option>').attr('value', entry.VipID).text(entry.FriendlyName));
        }
    })
});