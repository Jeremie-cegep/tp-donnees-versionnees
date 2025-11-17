# generate_data.ps1 

$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss" 

$value = Get-Random -Minimum 0 -Maximum 1000 

$line = "$date,$value" 

 

if (-Not (Test-Path "data.csv")) { 

    "timestamp,value" | Out-File -FilePath data.csv -Encoding utf8 

} 

 

$line | Out-File -FilePath data.csv -Encoding utf8 -Append 

Write-Output "Ajouté : $line" 

 