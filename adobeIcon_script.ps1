#To be run as admin in Powershell
#Get computer name
$computer = $env:computername

#Condition on if this .lnk file already exists. If it exists, remove it to prepare for new file.
if("\\$computer\C$\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader DC.lnk"){
Remove-Item “\\$computer\C$\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader DC.lnk”}

#New Object
$WshShell = New-Object -ComObject WScript.Shell

#Create the method to create shortcut
$Shortcut = $WshShell.CreateShortcut("\\$computer\C$\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader DC.lnk")

#Choose target path (this is where the program usually is installed)
$Shortcut.TargetPath = "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe"

#Get the icon location. For Adobe Reader the shortcut is included in the executable. Simply added the .exe as the icon location will work.
$Shortcut.IconLocation = "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe,0"

#Save changes
$Shortcut.Save()
