$(document).ready(function() {
    $('#amb-vipUser-table').DataTable( {
        ajax:{
            url: 'https://amba-api.azurewebsites.net/devices/GetAllDevices',
            dataSrc: ''
        },
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        type: "GET",
        columns: [
            { data: "DeviceID" },
            { data: "DeviceName" },
            { data: "DeviceType" }
        ]
    } );

    $('#amb-vipDevices-table').DataTable({});
    $('#amb-vipParameters-table').DataTable({});
} );