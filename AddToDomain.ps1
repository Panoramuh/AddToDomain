[System.Reflection.Assembly]::LoadWithPArtialName('Microsoft.VisualBasic') | Out-Null

$domain = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the domain name","Domain/Server")
$credential = [Microsoft.VisualBasic.Interaction]::InputBox("Enter your username","Credentials")
$computer = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the name of the computer to add","Computer/Host Name")

Add-Computer -ComputerName $computer -Domain $domain -Credential $credential -Confirm -Passthru -Restart
