$(document).ready(function() {
    // $('#amb-vipUser-table').DataTable( {
    //     ajax:{
    //         url: 'https://amba-api.azurewebsites.net/devices/GetAllDevices',
    //         dataSrc: ''
    //     },
    //     dataType: 'json',
    //     contentType: 'application/json; charset=utf-8',
    //     type: "GET",
    //     columns: [
    //         { data: "DeviceID" },
    //         { data: "DeviceName" },
    //         { data: "DeviceType" }
    //     ]
    // } );
    //
    // $('#amb-vipParameters-table').DataTable( {
    //     ajax:{
    //         url: 'https://amba-api.azurewebsites.net/Parameters/GetAllParams',
    //         dataSrc: ''
    //     },
    //     dataType: 'json',
    //     contentType: 'application/json; charset=utf-8',
    //     type: "GET",
    //     columns: [
    //         { data: "ParameterID" },
    //         { data: "ParameterName" }
    //     ]
    // } );
    //
    // $('#amb-vipRules-table').DataTable( {
    //     ajax:{
    //         url: 'https://amba-api.azurewebsites.net/Rules/GetAllRules',
    //         dataSrc: ''
    //     },
    //     dataType: 'json',
    //     contentType: 'application/json; charset=utf-8',
    //     type: "GET",
    //     columns: [
    //         { data: "RuleID" },
    //         { data: "RuleName" }
    //     ]
    // } );

    document.getElementById('input-vipID').onkeypress = function(e){
        if (!e) e = window.event;
        var keyCode = e.keyCode || e.which;
        if (keyCode == '13'){
            // Enter pressed
            $('#button-vipID-submit').click();

            return false;
        }
    }

    $('#button-vipID-submit').click(function(){
        //show all tables
        $('.datatable').addClass('show');
        $('#user-instruction').addClass('d-none');

        var vipID = $('#input-vipID').val();

        $('#amb-vipParameters-table').DataTable( {
            ajax:{
                url: 'https://amba-api.azurewebsites.net/Parameters/GetAllParams',
                dataSrc: ''
            },
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            type: "GET",
            columns: [
                { data: "ParameterID" },
                { data: "ParameterName" }
            ]
        } );

        $.getJSON('https://amba-api.azurewebsites.net/CurrentState/GetAppSleepStateVipID?vipId=' + vipID, function(data) {
            var my_columns = [];

            $.each( data[0], function( key, value ) {
                var my_item = {};
                my_item.data = key;
                my_item.title = key;
                my_columns.push(my_item);
            });

            if ( $.fn.dataTable.isDataTable( '#exampleTable' ) ) {
                $('#exampleTable').DataTable({
                    data: data,
                    "columns": my_columns
                });
            }else{
                $('#example').DataTable( {
                    paging: false
                } );
            }
        });

        $.getJSON('https://amba-api.azurewebsites.net/CurrentState/GetAllCurrentStateVipID?vipId=' + vipID, function(data) {
            var my_columns = [];

            $.each( data[0], function( key, value ) {
                var my_item = {};
                my_item.data = key;
                my_item.title = key;
                my_columns.push(my_item);
            });

            $('#currentState').DataTable({
                data: data,
                "columns": my_columns
            });
        });
    });




} );