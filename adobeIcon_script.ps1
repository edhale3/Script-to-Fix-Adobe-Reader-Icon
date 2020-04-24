$computer = $env:computername

if("\\$computer\C$\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader DC.lnk"){
Remove-Item “\\$computer\C$\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader DC.lnk”}

$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("\\$computer\C$\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader DC.lnk")
$Shortcut.TargetPath = "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe"
$Shortcut.IconLocation = "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe,0"
$Shortcut.Save()