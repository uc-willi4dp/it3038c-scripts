function getIP{
    (get-netipaddress).IPv4Address | Select-String "192*"
}
function getDATE {
    get-date -DisplayHint Date
}
$IP = getIP
$Version = $HOST.Version.Major
$DATE = getDATE
$Body = "This machine's IP is $IP. User is $env:UserName. Host name is $env:COMPUTERNAME. Host Version $Version. Today's date is $DATE"
Send-MailMessage -To "willi4dp@mail.uc.edu" -from "d.p.williams1999@gmail.com" -Subject "IT3038C Windows SysInfo" -Body $Body -SmtpServer smtp.gmail.com -port 587 -UseSsl -Credential (Get-Credential)
