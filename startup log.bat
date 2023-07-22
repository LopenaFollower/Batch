@echo off
Powershell -command " $hookUrl = 'https://discord.com/api/webhooks/1074048322744090714/nMHd93KgJrP5lFC94Hmp1xaPVmxyOSG2GHS91SB7GK98W_Gb3-13l9U7e21xOCl7D84f'; $content = hostname +' Logged on at '+ (Get-Date); $payload = [PSCustomObject]@{content = $content}; Invoke-RestMethod -Uri $hookUrl -ContentType 'Application/Json' -Method Post -Body ($payload | ConvertTo-Json); "
