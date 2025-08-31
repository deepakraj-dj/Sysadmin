Write-Host "***AUTOMATED LOCAL USER CREATOR***"
read-host "Press Enter to Start"

try
{
$name = Read-Host "Enter the Username :"
$passwd = Read-Host "Enter the password for this user" -AsSecureString 

New-LocalUser -name $name -Password $passwd
Add-LocalGroupMember -Group "Users" -Member $name
Write-Host "User has been Successfully Created"
}

catch
{
Write-Host "Failed to create user"
}