Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
$Ask = 'Do you want to run this as an Administrator?
        Select "Yes" to Run as an Administrator
        Select "No" to not run this as an Administrator
        
        Select "Cancel" to stop the script.'

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    $Prompt = [System.Windows.MessageBox]::Show($Ask, "Run as an Administrator or not?", $Button, $ErrorIco) 
    Switch ($Prompt) {
        Yes {
            Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
            Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
            Exit
        }
        No {
            Break
        }
    }
}

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(1520,700)
$Form.text                       = "FNX Labs - Software Installer"
$Form.TopMost                    = $false

$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 289
$Panel1.width                    = 1478
$Panel1.location                 = New-Object System.Drawing.Point(9,50)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Software Installation"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(28,5)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',22)

$installchoco                    = New-Object system.Windows.Forms.Button
$installchoco.text               = "Install Chocolatey"
$installchoco.width              = 200
$installchoco.height             = 62
$installchoco.location           = New-Object System.Drawing.Point(24,18)
$installchoco.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$uninstallchoco                  = New-Object system.Windows.Forms.Button
$uninstallchoco.text             = "Uninstall Chocolatey"
$uninstallchoco.width            = 200
$uninstallchoco.height           = 62
$uninstallchoco.location         = New-Object System.Drawing.Point(24,81)
$uninstallchoco.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$upgradechoco                    = New-Object system.Windows.Forms.Button
$upgradechoco.text               = "Upgrade Chocolatey"
$upgradechoco.width              = 200
$upgradechoco.height             = 62
$upgradechoco.location           = New-Object System.Drawing.Point(24,144)
$upgradechoco.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$brave                           = New-Object system.Windows.Forms.Button
$brave.text                      = "Brave Browser"
$brave.width                     = 150
$brave.height                    = 30
$brave.location                  = New-Object System.Drawing.Point(251,140)
$brave.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$vivaldi                         = New-Object system.Windows.Forms.Button
$vivaldi.text                    = "Vivaldi Browser"
$vivaldi.width                   = 150
$vivaldi.height                  = 30
$vivaldi.location                = New-Object System.Drawing.Point(251,175)
$vivaldi.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$opera                           = New-Object system.Windows.Forms.Button
$opera.text                      = "Opera Browser"
$opera.width                     = 150
$opera.height                    = 30
$opera.location                  = New-Object System.Drawing.Point(251,105)
$opera.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$msedge                          = New-Object system.Windows.Forms.Button
$msedge.text                     = "Microsoft Edge"
$msedge.width                    = 150
$msedge.height                   = 30
$msedge.location                 = New-Object System.Drawing.Point(251,70)
$msedge.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$firefox                         = New-Object system.Windows.Forms.Button
$firefox.text                    = "Mozilla Firefox"
$firefox.width                   = 150
$firefox.height                  = 30
$firefox.location                = New-Object System.Drawing.Point(251,35)
$firefox.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$githubdestkop                   = New-Object system.Windows.Forms.Button
$githubdestkop.text              = "Git-Hub Desktop"
$githubdestkop.width             = 150
$githubdestkop.height            = 30
$githubdestkop.location          = New-Object System.Drawing.Point(1175,0)
$githubdestkop.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$7zip                            = New-Object system.Windows.Forms.Button
$7zip.text                       = "7-Zip"
$7zip.width                      = 150
$7zip.height                     = 30
$7zip.location                   = New-Object System.Drawing.Point(1329,0)
$7zip.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$musikcube                       = New-Object system.Windows.Forms.Button
$musikcube.text                  = "MusikCube"
$musikcube.width                 = 150
$musikcube.height                = 30
$musikcube.location              = New-Object System.Drawing.Point(713,0)
$musikcube.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$aimp                       	 = New-Object system.Windows.Forms.Button
$aimp.text                  	 = "AIMP"
$aimp.width                 	 = 150
$aimp.height                	 = 30
$aimp.location               	 = New-Object System.Drawing.Point(713,35)
$aimp.Font                  	 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$spotify                       	 = New-Object system.Windows.Forms.Button
$spotify.text                  	 = "Spotify"
$spotify.width                 	 = 150
$spotify.height                	 = 30
$spotify.location                = New-Object System.Drawing.Point(713,140)
$spotify.Font                  	 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$audacity                        = New-Object system.Windows.Forms.Button
$audacity.text                 	 = "Audacity + Plugins"
$audacity.width                  = 150
$audacity.height               	 = 30
$audacity.location               = New-Object System.Drawing.Point(713,175)
$audacity.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$musicbee                        = New-Object system.Windows.Forms.Button
$musicbee.text                   = "MusicBee"
$musicbee.width                  = 150
$musicbee.height                 = 30
$musicbee.location               = New-Object System.Drawing.Point(713,105)
$musicbee.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$winamp                          = New-Object system.Windows.Forms.Button
$winamp.text                     = "Winamp"
$winamp.width                    = 150
$winamp.height                   = 30
$winamp.location                 = New-Object System.Drawing.Point(713,70)
$winamp.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$irfanview                       = New-Object system.Windows.Forms.Button
$irfanview.text                  = "Irfanview"
$irfanview.width                 = 150
$irfanview.height                = 30
$irfanview.location              = New-Object System.Drawing.Point(559,0)
$irfanview.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$xnviewmp                       = New-Object system.Windows.Forms.Button
$xnviewmp.text                  = "XnView MP"
$xnviewmp.width                 = 150
$xnviewmp.height                = 30
$xnviewmp.location              = New-Object System.Drawing.Point(559,35)
$xnviewmp.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$adobereader                     = New-Object system.Windows.Forms.Button
$adobereader.text                = "Adobe Reader DC"
$adobereader.width               = 150
$adobereader.height              = 30
$adobereader.location            = New-Object System.Drawing.Point(405,0)
$adobereader.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$sumatrapdf                      = New-Object system.Windows.Forms.Button
$sumatrapdf.text                 = "SumatraPDF"
$sumatrapdf.width                = 150
$sumatrapdf.height               = 30
$sumatrapdf.location             = New-Object System.Drawing.Point(405,35)
$sumatrapdf.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$libreoffice                     = New-Object system.Windows.Forms.Button
$libreoffice.text                = "LibreOffice"
$libreoffice.width               = 150
$libreoffice.height              = 30
$libreoffice.location            = New-Object System.Drawing.Point(405,70)
$libreoffice.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$imageconverter                  = New-Object system.Windows.Forms.Button
$imageconverter.text             = "Image Converter"
$imageconverter.width            = 150
$imageconverter.height           = 30
$imageconverter.location         = New-Object System.Drawing.Point(1329,35)
$imageconverter.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$handbrake                 		 = New-Object system.Windows.Forms.Button
$handbrake.text           		 = "Handbrake"
$handbrake.width         		 = 150
$handbrake.height       	     = 30
$handbrake.location      		 = New-Object System.Drawing.Point(1329,70)
$handbrake.Font          		 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$notepad                         = New-Object system.Windows.Forms.Button
$notepad.text                    = "Notepad++"
$notepad.width                   = 150
$notepad.height                  = 30
$notepad.location                = New-Object System.Drawing.Point(1175,35)
$notepad.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$sublimetext                     = New-Object system.Windows.Forms.Button
$sublimetext.text                = "Sublime Text"
$sublimetext.width               = 150
$sublimetext.height              = 30
$sublimetext.location            = New-Object System.Drawing.Point(1175,70)
$sublimetext.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$gchrome                         = New-Object system.Windows.Forms.Button
$gchrome.text                    = "Google Chrome"
$gchrome.width                   = 150
$gchrome.height                  = 30
$gchrome.location                = New-Object System.Drawing.Point(251,0)
$gchrome.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$mpc                             = New-Object system.Windows.Forms.Button
$mpc.text                        = "Media Player Classic"
$mpc.width                       = 150
$mpc.height                      = 30
$mpc.location                    = New-Object System.Drawing.Point(867,140)
$mpc.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$popcorntime                     = New-Object system.Windows.Forms.Button
$popcorntime.text                = "Popcorn-Time"
$popcorntime.width               = 150
$popcorntime.height              = 30
$popcorntime.location            = New-Object System.Drawing.Point(867,0)
$popcorntime.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$subtitulos1                     = New-Object system.Windows.Forms.Button
$subtitulos1.text                = "Subtitulos 1.0"
$subtitulos1.width               = 150
$subtitulos1.height              = 30
$subtitulos1.location            = New-Object System.Drawing.Point(867,35)
$subtitulos1.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$vlc                             = New-Object system.Windows.Forms.Button
$vlc.text                        = "VLC"
$vlc.width                       = 150
$vlc.height                      = 30
$vlc.location                    = New-Object System.Drawing.Point(867,70)
$vlc.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$smplayer                        = New-Object system.Windows.Forms.Button
$smplayer.text                   = "SMPlayer"
$smplayer.width                  = 150
$smplayer.height                 = 30
$smplayer.location               = New-Object System.Drawing.Point(867,105)
$smplayer.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$powertoys                       = New-Object system.Windows.Forms.Button
$powertoys.text                  = "PowerToys"
$powertoys.width                 = 150
$powertoys.height                = 30
$powertoys.location              = New-Object System.Drawing.Point(1329,210)
$powertoys.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$winterminal                     = New-Object system.Windows.Forms.Button
$winterminal.text                = "Windows Terminal"
$winterminal.width               = 150
$winterminal.height              = 30
$winterminal.location            = New-Object System.Drawing.Point(1329,245)
$winterminal.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$teamviewer                      = New-Object system.Windows.Forms.Button
$teamviewer.text                 = "TeamViewer"
$teamviewer.width                = 150
$teamviewer.height               = 30
$teamviewer.location             = New-Object System.Drawing.Point(1329,175)
$teamviewer.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$qbittorrent                     = New-Object system.Windows.Forms.Button
$qbittorrent.text                = "qBittorrent"
$qbittorrent.width               = 150
$qbittorrent.height              = 30
$qbittorrent.location            = New-Object System.Drawing.Point(1329,140)
$qbittorrent.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$krita                        	 = New-Object system.Windows.Forms.Button
$krita.text                  	 = "Krita"
$krita.width                 	 = 150
$krita.height              	     = 30
$krita.location           		 = New-Object System.Drawing.Point(559,70)
$krita.Font                		 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$gimp                        	 = New-Object system.Windows.Forms.Button
$gimp.text                  	 = "Gimp"
$gimp.width                 	 = 150
$gimp.height              	     = 30
$gimp.location           		 = New-Object System.Drawing.Point(559,105)
$gimp.Font                		 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$inkscape                        = New-Object system.Windows.Forms.Button
$inkscape.text                   = "Inkscape"
$inkscape.width                  = 150
$inkscape.height              	 = 30
$inkscape.location           	 = New-Object System.Drawing.Point(559,140)
$inkscape.Font                	 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$blender                         = New-Object system.Windows.Forms.Button
$blender.text                    = "Blender"
$blender.width                   = 150
$blender.height              	 = 30
$blender.location           	 = New-Object System.Drawing.Point(559,175)
$blender.Font                	 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$kdenlive                        = New-Object system.Windows.Forms.Button
$kdenlive.text                   = "Kdenlive"
$kdenlive.width                  = 150
$kdenlive.height              	 = 30
$kdenlive.location           	 = New-Object System.Drawing.Point(1329,105)
$kdenlive.Font                	 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$diskcleanup                     = New-Object system.Windows.Forms.Button
$diskcleanup.text                = "Disk Cleanup"
$diskcleanup.width               = 150
$diskcleanup.height              = 30
$diskcleanup.location            = New-Object System.Drawing.Point(1021,0)
$diskcleanup.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ccleaner                        = New-Object system.Windows.Forms.Button
$ccleaner.text                   = "CCleaner"
$ccleaner.width                  = 150
$ccleaner.height                 = 30
$ccleaner.location               = New-Object System.Drawing.Point(1021,35)
$ccleaner.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Speccy                          = New-Object system.Windows.Forms.Button
$Speccy.text                     = "Speccy"
$Speccy.width                    = 150
$Speccy.height                   = 30
$Speccy.location                 = New-Object System.Drawing.Point(1021,70)
$Speccy.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$recuva                          = New-Object system.Windows.Forms.Button
$recuva.text                     = "Recuva"
$recuva.width                    = 150
$recuva.height                   = 30
$recuva.location                 = New-Object System.Drawing.Point(1021,105)
$recuva.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$defraggler                      = New-Object system.Windows.Forms.Button
$defraggler.text                 = "Defraggler"
$defraggler.width                = 150
$defraggler.height               = 30
$defraggler.location             = New-Object System.Drawing.Point(1021,140)
$defraggler.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$vscode                          = New-Object system.Windows.Forms.Button
$vscode.text                     = "Visual Studio Code"
$vscode.width                    = 150
$vscode.height                   = 30
$vscode.location                 = New-Object System.Drawing.Point(1175,105)
$vscode.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "(Chocolatey Required for Installs)"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(25,-1)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$PictureBox1                     = New-Object system.Windows.Forms.PictureBox
$PictureBox1.width               = 412
$PictureBox1.height              = 125
$PictureBox1.location            = New-Object System.Drawing.Point(1100,580)
$PictureBox1.imageLocation       = "https://github.com/dgcosenza/win10script/blob/master/images/FNX_Labs_LOGO_COLOR_Small.png?raw=true"
$PictureBox1.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom

$Form.controls.AddRange(@($Panel1,$Label1,$Label2,$PictureBox1))
$Panel1.controls.AddRange(@($Label2,$installchoco,$uninstallchoco,$upgradechoco,$brave,$vivaldi,$opera,$msedge,$firefox,$subtitulos1,$7zip,$githubdestkop,$irfanview,$xnviewmp,$aimp,$musikcube,$spotify,$audacity,$musicbee,$winamp,$adobereader,$sumatrapdf,$libreoffice,$imageconverter,$handbrake,$smplayer,$notepad,$sublimetext,$gchrome,$mpc,$vlc,$popcorntime,$powertoys,$winterminal,$teamviewer,$qbittorrent,$krita,$gimp,$inkscape,$blender,$kdenlive,$ccleaner,$diskcleanup,$speccy,$recuva,$defraggler,$vscode))

$installchoco.Add_Click({ 
    Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$uninstallchoco.Add_Click({ 
	Write-Host "Uninstalling Chocolatey"
	if ($env:ChocolateyBinRoot -ne '' -and $env:ChocolateyBinRoot -ne $null) { Remove-Item -Recurse -Force "$env:ChocolateyBinRoot" }
	if ($env:ChocolateyToolsRoot -ne '' -and $env:ChocolateyToolsRoot -ne $null) { Remove-Item -Recurse -Force "$env:ChocolateyToolsRoot" }
	[System.Environment]::SetEnvironmentVariable("ChocolateyBinRoot", $null, 'User')
	[System.Environment]::SetEnvironmentVariable("ChocolateyToolsLocation", $null, 'User')
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$upgradechoco.Add_Click({ 
    Write-Host "Upgrading Chocolatey Installed Software"
	choco upgrade all -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$brave.Add_Click({ 
    Invoke-WebRequest -Uri "https://laptop-updates.brave.com/download/CHR253" -OutFile $env:USERPROFILE\Downloads\brave.exe
	~/Downloads/brave.exe
})

$imageconverter.Add_Click({ 
    Invoke-WebRequest -Uri "https://github.com/dgcosenza/win10script/blob/master/tools/Image_Converter.exe" -OutFile $env:USERPROFILE\Downloads\Image_Converter.exe
	~/Downloads/Image_Converter.exe
})

$subtitulos1.Add_Click({ 
    Invoke-WebRequest -Uri "https://github.com/dgcosenza/win10script/blob/master/tools/Subtitulos_1.0.exe" -OutFile $env:USERPROFILE\Downloads\Subtitulos_1.0.exe
	~/Downloads/Subtitulos_1.0.exe
})

$firefox.Add_Click({ 
    Write-Host "Installing Mozilla Firefox"
    choco install firefox -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$gchrome.Add_Click({ 
    Write-Host "Installing Google Chrome"
    choco install googlechrome -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$teamviewer.Add_Click({ 
    Write-Host "Installing TeamViewer"
    choco install teamviewer -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$qbittorrent.Add_Click({ 
    Write-Host "Installing qBittorrent"
    choco install qbittorrent -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$vivaldi.Add_Click({ 
    Write-Host "Installing Vivaldi Browser"
    choco install vivaldi -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$handbrake.Add_Click({ 
    Write-Host "Installing Handbrake"
    choco install handbrake -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$opera.Add_Click({ 
    Write-Host "Installing Opera Browser"
    choco install opera -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$githubdestkop.Add_Click({ 
    Write-Host "Installing Git-Hub Desktop"
    choco install github-desktop -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$msedge.Add_Click({ 
    Write-Host "Installing Microsoft Edge"
    choco install microsoft-edge -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$irfanview.Add_Click({ 
    Write-Host "Installing Irfanview (Image Viewer)"
    choco install irfanview -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$xnviewmp.Add_Click({ 
    Write-Host "Installing XnView MP (Image Viewer)"
    choco install xnviewmp -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$musikcube.Add_Click({ 
    Write-Host "Installing MusikCube"
    choco install musikcube -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$aimp.Add_Click({ 
    Write-Host "Installing AIMP"
    choco install aimp -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$spotify.Add_Click({ 
    Write-Host "Installing Spotify"
    choco install spotify -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$audacity.Add_Click({ 
    Write-Host "Installing Audacity + Plugins"
    choco install audacity audacity-lame audacity-ffmpeg -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$musicbee.Add_Click({ 
    Write-Host "Installing MusicBee"
    choco install musicbee -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$winamp.Add_Click({ 
    Write-Host "Installing Winamp"
    choco install winamp -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$adobereader.Add_Click({ 
    Write-Host "Installing Adobe Reader DC"
    choco install adobereader -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$sumatrapdf.Add_Click({ 
    Write-Host "Installing SumatraPDF"
    choco install sumatrapdf -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$libreoffice.Add_Click({ 
    Write-Host "Installing LibreOffice"
    choco install libreoffice -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$notepad.Add_Click({ 
    Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$sublimetext.Add_Click({ 
    Write-Host "Installing Sublime Text 3"
    choco install sublimetext3 -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$vlc.Add_Click({ 
    Write-Host "Installing VLC Media Player"
    choco install vlc -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$popcorntime.Add_Click({ 
    Write-Host "Installing Popcorn-Time"
    choco install popcorntime -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$smplayer.Add_Click({ 
    Write-Host "Installing SMPlayer"
    choco install smplayer -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$mpc.Add_Click({ 
    Write-Host "Installing Media Player Classic"
    choco install mpc-be -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$7zip.Add_Click({ 
    Write-Host "Installing 7-Zip Compression Tool"
    choco install 7zip -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$vscode.Add_Click({ 
    Write-Host "Installing Visual Studio Code"
    choco install vscode -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$winterminal.Add_Click({ 
    Write-Host "Installing New Windows Terminal"
    choco install microsoft-windows-terminal -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$ccleaner.Add_Click({ 
    Write-Host "Installing CCleaner"
    choco install ccleaner -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$diskcleanup.Add_Click({ 
    c:\windows\SYSTEM32\cleanmgr.exe
})

$krita.Add_Click({ 
    Write-Host "Installing Krita"
    choco install krita -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$gimp.Add_Click({ 
    Write-Host "Installing Gimp"
    choco install gimp -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$inkscape.Add_Click({ 
    Write-Host "Installing Inkscape"
    choco install inkscape -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$blender.Add_Click({ 
    Write-Host "Installing Blender"
    choco install blender -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$kdenlive.Add_Click({ 
    Write-Host "Installing Kdenlive"
    choco install kdenlive -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$speccy.Add_Click({ 
    Write-Host "Installing Speccy"
    choco install speccy -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$recuva.Add_Click({ 
    Write-Host "Installing Recuva"
    choco install recuva -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$defraggler.Add_Click({ 
    Write-Host "Installing Defraggler"
    choco install defraggler -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$powertoys.Add_Click({ 
    Write-Host "Installing Microsoft PowerToys"
    choco install powertoys -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

[void]$Form.ShowDialog()