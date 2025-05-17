#Get-Service | Where-Object {$_.Status -eq "Stopped"}
#Get-Service | Get-Member

get-service |stop-service -whatif |Export-Csv c:\services.txt -Delimiter ";"

#get-service |stop-service -Confirm


Function add 
{
$add =[INT] (2+2)
Write-Output "$add"
}
add
