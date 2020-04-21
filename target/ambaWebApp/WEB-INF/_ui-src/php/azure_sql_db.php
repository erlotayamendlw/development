<?php
// SQL Server Extension Sample Code:
$connectionInfo = array("UID" => "dbuser@amba-poc-sql-db-srv-1", "pwd" => "9C0GkDXh6a5wJqsC4gW8", "Database" => "Amba-POC-DB-1", "LoginTimeout" => 30, "Encrypt" => 1, "TrustServerCertificate" => 0);
$serverName = "amba-poc-sql-db-srv-1.database.windows.net, 1433";
$conn = sqlsrv_connect($serverName, $connectionInfo);

if( $conn ) {
    echo "Connection established.<br/>";
}else{
    echo "Connection could not be established.<br/>";
    die( print_r( sqlsrv_errors(), true));
}
?>