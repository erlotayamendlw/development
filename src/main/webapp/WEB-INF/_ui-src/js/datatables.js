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

$(document).ready(function () {
    $(window).unload(function () {
        $.cookies.del('name_of_your_cookie');
    });
    
    let defaultvipID = 1;
    if (localStorage.getItem("previousVIPID") != null) {
        defaultvipID = localStorage.getItem("previousVIPID");
    }

    let currentStateTable = getDataTableInstance(CURRENT_STATE_API + defaultvipID, 'currentState');
    let devicesTable = getDataTableInstance(DEVICES_API + defaultvipID, 'devices');
    let notificationHistoryTable = getDataTableInstance(NOTIFICATION_HISTORY_API + defaultvipID, 'notificationHistory');
    let usersTable = getDataTableInstance(USERS_API + defaultvipID, 'users');
    let paramsTable = getDataTableInstance(PARAMS_API + defaultvipID, 'params');
    let rawDataTable = getDataTableInstance(RAW_DATA_API + defaultvipID, 'rawData');
    let rulesTable = getDataTableInstance(RULES_API + defaultvipID, 'rules');

    $('#button-vipID-submit').click(function () {
        let vipID = $('#input-vipID').val();
        currentStateTable = redrawTable(CURRENT_STATE_API + vipID, currentStateTable, 'currentState');
        devicesTable = redrawTable(DEVICES_API + vipID, devicesTable, 'devices');
        notificationHistoryTable = redrawTable(NOTIFICATION_HISTORY_API + vipID, notificationHistoryTable, 'notificationHistory');
        usersTable = redrawTable(USERS_API + vipID, usersTable, 'users');
        paramsTable = redrawTable(PARAMS_API + vipID, paramsTable, 'params');
        rawDataTable = redrawTable(RAW_DATA_API + vipID, rawDataTable, 'rawData');
        rulesTable = redrawTable(RULES_API + vipID, rulesTable, 'rules');

        localStorage.setItem("previousVIPID", vipID);
    });

    $("#search-vipID-form").submit(function (e) {
        e.preventDefault();
        $('#button-vipID-submit').click();
    });
});

function getJSONfromAPI(apiUrl) {
    let my_columns = [];
    let my_data = [];

    $.getJSON(apiUrl, function (data) {
        let columns = [];

        if (data.length > 0) {
            $.each(data[0], function (key, value) {
                let my_item = {};
                my_item.data = key;
                my_item.title = key;
                columns.push(my_item);
            });
        }

        my_data = data;
        my_columns = columns;

    });
    return {my_columns, my_data};
}

function getDataTableInstance(apiUrl, tableId) {
    let {my_columns, my_data} = getJSONfromAPI(apiUrl);

    if (my_data.length > 0) {
        $('#' + tableId + ' thead').remove();

        return $('#' + tableId).DataTable({
            data: my_data,
            "columns": my_columns
        });
    }

    return $('#' + tableId).DataTable();
}

function redrawTable(apiUrl, table, tableId) {
    let {my_columns, my_data} = getJSONfromAPI(apiUrl);
    table.destroy();
    $('#' + tableId).empty();

    if (my_data.length > 0) {
        $('#' + tableId + ' thead').remove();
        return $('#' + tableId).DataTable({
            columns: my_columns,
            data: my_data
        });
    }

    $('#' + tableId).html('<thead>\n' +
        '                            <tr>\n' +
        '                                <th>No data found for this VIP ID</th>\n' +
        '                            </tr>\n' +
        '                            </thead>');

    return $('#' + tableId).DataTable();
}

document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();

        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});