$.ajaxSetup({
    async: false
});

var CURRENT_STATE_API = 'https://amba-api.azurewebsites.net/CurrentState/GetAllCurrentStateVipID?vipId=';
var DEVICES_API = 'https://amba-api.azurewebsites.net/UIUsers/GetDevices?vipId=';
var NOTIFICATION_HISTORY_API = 'https://amba-api.azurewebsites.net/UIUsers/GetNotificationHistory?vipId=';
var USERS_API = 'https://amba-api.azurewebsites.net/UIUsers/GetUsers?vipId=';
var PARAMS_API = 'https://amba-api.azurewebsites.net/UIUsers/GetParams?vipId=';
var RAW_DATA_API = 'https://amba-api.azurewebsites.net/UIUsers/GetRawData?vipId=';
var RULES_API = 'https://amba-api.azurewebsites.net/UIUsers/GetRules?vipId=';
var DEFAULT_VIP_ID = 1;

$(document).ready(function() {
    let currentStateTable = getDataTableInstance(CURRENT_STATE_API + DEFAULT_VIP_ID, 'currentState');
    let devicesTable = getDataTableInstance(DEVICES_API + DEFAULT_VIP_ID, 'devices');
    let notificationHistoryTable = getDataTableInstance(NOTIFICATION_HISTORY_API + DEFAULT_VIP_ID, 'notificationHistory');
    let usersTable = getDataTableInstance(USERS_API + DEFAULT_VIP_ID, 'users');
    let paramsTable = getDataTableInstance(PARAMS_API + DEFAULT_VIP_ID, 'params');
    let rawDataTable = getDataTableInstance(RAW_DATA_API + DEFAULT_VIP_ID, 'rawData');
    let rulesTable = getDataTableInstance(RULES_API + DEFAULT_VIP_ID, 'rules');

    $('#button-vipID-submit').click(function(){
        var vipID = $('#input-vipID').val();

        redrawTable(CURRENT_STATE_API + vipID, currentStateTable, 'currentState');
        redrawTable(DEVICES_API + vipID, devicesTable, 'devices');
        redrawTable(NOTIFICATION_HISTORY_API + vipID, notificationHistoryTable, 'notificationHistory');
        redrawTable(USERS_API + vipID, usersTable, 'users');
        redrawTable(PARAMS_API + vipID, paramsTable, 'params');
        redrawTable(RAW_DATA_API + vipID, rawDataTable, 'rawData');
        redrawTable(RULES_API + vipID, rulesTable, 'rules');
    });
});

function getDataTableInstance(apiUrl, tableId) {
    let my_columns = [];
    let my_data = [];

    $.getJSON(apiUrl , function(data) {
        let columns = [];

        $.each( data[0], function( key, value ) {
            let my_item = {};
            my_item.data = key;
            my_item.title = key;
            columns.push(my_item);
        });

        my_data = data;
        my_columns = columns;

    });

    return $('#' + tableId).DataTable({
        data: my_data,
        "columns": my_columns
    });
}

function redrawTable(apiUrl, table, tableId){
    let my_columns = [];
    let my_data = [];

    $.getJSON(apiUrl , function(data) {
        let columns = [];

        $.each( data[0], function( key, value ) {
            let my_item = {};
            my_item.data = key;
            my_item.title = key;
            columns.push(my_item);
        });

        my_data = data;
        my_columns = columns;

    });

    table.clear().draw();
    table.rows.add(my_data); // Add new data
    table.columns.adjust().draw();
}
