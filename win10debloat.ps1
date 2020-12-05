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
        #This will debloat Windows 10
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
$Form.text                       = "FNX Labs Windows Toolbox"
$Form.TopMost                    = $false

$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 210
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
$powertoys.location              = New-Object System.Drawing.Point(1329,140)
$powertoys.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$winterminal                     = New-Object system.Windows.Forms.Button
$winterminal.text                = "Windows Terminal"
$winterminal.width               = 150
$winterminal.height              = 30
$winterminal.location            = New-Object System.Drawing.Point(1329,175)
$winterminal.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

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

$ccleaner                        = New-Object system.Windows.Forms.Button
$ccleaner.text                   = "CCleaner"
$ccleaner.width                  = 150
$ccleaner.height                 = 30
$ccleaner.location               = New-Object System.Drawing.Point(1021,0)
$ccleaner.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Speccy                          = New-Object system.Windows.Forms.Button
$Speccy.text                     = "Speccy"
$Speccy.width                    = 150
$Speccy.height                   = 30
$Speccy.location                 = New-Object System.Drawing.Point(1021,35)
$Speccy.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$recuva                          = New-Object system.Windows.Forms.Button
$recuva.text                     = "Recuva"
$recuva.width                    = 150
$recuva.height                   = 30
$recuva.location                 = New-Object System.Drawing.Point(1021,70)
$recuva.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$defraggler                      = New-Object system.Windows.Forms.Button
$defraggler.text                 = "Defraggler"
$defraggler.width                = 150
$defraggler.height               = 30
$defraggler.location             = New-Object System.Drawing.Point(1021,105)
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

$Panel2                          = New-Object system.Windows.Forms.Panel
$Panel2.height                   = 159
$Panel2.width                    = 588
$Panel2.location                 = New-Object System.Drawing.Point(9,293)

$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "System Tweaks"
$Label3.AutoSize                 = $true
$Label3.width                    = 230
$Label3.height                   = 25
$Label3.location                 = New-Object System.Drawing.Point(323,264)
$Label3.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',18)

$essentialtweaks                 = New-Object system.Windows.Forms.Button
$essentialtweaks.text            = "Essential Tweaks"
$essentialtweaks.width           = 200
$essentialtweaks.height          = 135
$essentialtweaks.location        = New-Object System.Drawing.Point(24,15)
$essentialtweaks.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$backgroundapps                  = New-Object system.Windows.Forms.Button
$backgroundapps.text             = "Background Apps (D)"
$backgroundapps.width            = 150
$backgroundapps.height           = 30
$backgroundapps.location         = New-Object System.Drawing.Point(251,50)
$backgroundapps.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$cortana                         = New-Object system.Windows.Forms.Button
$cortana.text                    = "Cortana (D)"
$cortana.width                   = 150
$cortana.height                  = 30
$cortana.location                = New-Object System.Drawing.Point(251,85)
$cortana.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$windowssearch                   = New-Object system.Windows.Forms.Button
$windowssearch.text              = "Windows Search (D)"
$windowssearch.width             = 150
$windowssearch.height            = 30
$windowssearch.location          = New-Object System.Drawing.Point(405,120)
$windowssearch.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$actioncenter                    = New-Object system.Windows.Forms.Button
$actioncenter.text               = "Action Center (D)"
$actioncenter.width              = 150
$actioncenter.height             = 30
$actioncenter.location           = New-Object System.Drawing.Point(251,15)
$actioncenter.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$darkmode                        = New-Object system.Windows.Forms.Button
$darkmode.text                   = "Dark Mode (E)"
$darkmode.width                  = 150
$darkmode.height                 = 30
$darkmode.location               = New-Object System.Drawing.Point(405,15)
$darkmode.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$visualfx                        = New-Object system.Windows.Forms.Button
$visualfx.text                   = "Visual FX (D)"
$visualfx.width                  = 150
$visualfx.height                 = 30
$visualfx.location               = New-Object System.Drawing.Point(405,85)
$visualfx.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$onedrive                        = New-Object system.Windows.Forms.Button
$onedrive.text                   = "OneDrive (D)"
$onedrive.width                  = 150
$onedrive.height                 = 30
$onedrive.location               = New-Object System.Drawing.Point(251,120)
$onedrive.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Panel3                          = New-Object system.Windows.Forms.Panel
$Panel3.height                   = 158
$Panel3.width                    = 440
$Panel3.location                 = New-Object System.Drawing.Point(601,293)

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "Security"
$Label4.AutoSize                 = $true
$Label4.width                    = 117
$Label4.height                   = 25
$Label4.location                 = New-Object System.Drawing.Point(761,264)
$Label4.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',18)

$securitylow                     = New-Object system.Windows.Forms.Button
$securitylow.text                = "Low"
$securitylow.width               = 195
$securitylow.height              = 30
$securitylow.location            = New-Object System.Drawing.Point(25,120)
$securitylow.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$securityhigh                    = New-Object system.Windows.Forms.Button
$securityhigh.text               = "High"
$securityhigh.width              = 195
$securityhigh.height             = 30
$securityhigh.location           = New-Object System.Drawing.Point(233,120)
$securityhigh.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "- Set UAC to Never Prompt"
$Label5.AutoSize                 = $true
$Label5.width                    = 150
$Label5.height                   = 10
$Label5.location                 = New-Object System.Drawing.Point(24,15)
$Label5.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "- Disable Windows Defender"
$Label6.AutoSize                 = $true
$Label6.width                    = 150
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(24,32)
$Label6.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.text                     = "- Disable Defender Updates"
$Label7.AutoSize                 = $true
$Label7.width                    = 150
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(24,83)
$Label7.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label8                          = New-Object system.Windows.Forms.Label
$Label8.text                     = "- Disable Windows Malware Scan"
$Label8.AutoSize                 = $true
$Label8.width                    = 150
$Label8.height                   = 10
$Label8.location                 = New-Object System.Drawing.Point(23,66)
$Label8.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label9                          = New-Object system.Windows.Forms.Label
$Label9.text                     = "- Disable Meltdown Flag"
$Label9.AutoSize                 = $true
$Label9.width                    = 150
$Label9.height                   = 10
$Label9.location                 = New-Object System.Drawing.Point(24,49)
$Label9.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label10                         = New-Object system.Windows.Forms.Label
$Label10.text                    = "- Set UAC to Always Prompt"
$Label10.AutoSize                = $true
$Label10.width                   = 25
$Label10.height                  = 10
$Label10.location                = New-Object System.Drawing.Point(233,15)
$Label10.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label11                         = New-Object system.Windows.Forms.Label
$Label11.text                    = "- Enable Windows Defender"
$Label11.AutoSize                = $true
$Label11.width                   = 25
$Label11.height                  = 10
$Label11.location                = New-Object System.Drawing.Point(233,32)
$Label11.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label12                         = New-Object system.Windows.Forms.Label
$Label12.text                    = "- Enable Windows Malware Scan"
$Label12.AutoSize                = $true
$Label12.width                   = 25
$Label12.height                  = 10
$Label12.location                = New-Object System.Drawing.Point(232,66)
$Label12.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label13                         = New-Object system.Windows.Forms.Label
$Label13.text                    = "- Enable Meltdown Flag"
$Label13.AutoSize                = $true
$Label13.width                   = 25
$Label13.height                  = 10
$Label13.location                = New-Object System.Drawing.Point(233,49)
$Label13.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label15                         = New-Object system.Windows.Forms.Label
$Label15.text                    = "Windows Update"
$Label15.AutoSize                = $true
$Label15.width                   = 25
$Label15.height                  = 10
$Label15.location                = New-Object System.Drawing.Point(45,523)
$Label15.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Panel4                          = New-Object system.Windows.Forms.Panel
$Panel4.height                   = 200
$Panel4.width                    = 340
$Panel4.location                 = New-Object System.Drawing.Point(9,491)

$defaultwindowsupdate            = New-Object system.Windows.Forms.Button
$defaultwindowsupdate.text       = "Default Settings"
$defaultwindowsupdate.width      = 200
$defaultwindowsupdate.height     = 30
$defaultwindowsupdate.location   = New-Object System.Drawing.Point(24,61)
$defaultwindowsupdate.Font       = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$securitywindowsupdate           = New-Object system.Windows.Forms.Button
$securitywindowsupdate.text      = "Security Updates Only"
$securitywindowsupdate.width     = 200
$securitywindowsupdate.height    = 30
$securitywindowsupdate.location  = New-Object System.Drawing.Point(24,168)
$securitywindowsupdate.Font      = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$Label16                         = New-Object system.Windows.Forms.Label
$Label16.text                    = "I Recommend Doing Security Updates Only."
$Label16.AutoSize                = $true
$Label16.width                   = 25
$Label16.height                  = 10
$Label16.location                = New-Object System.Drawing.Point(24,94)
$Label16.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label17                         = New-Object system.Windows.Forms.Label
$Label17.text                    = "* Delays Features Updates Up to 3 Years"
$Label17.AutoSize                = $true
$Label17.width                   = 25
$Label17.height                  = 10
$Label17.location                = New-Object System.Drawing.Point(23,112)
$Label17.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label18                         = New-Object system.Windows.Forms.Label
$Label18.text                    = "* Delays Security Updates 4 Days"
$Label18.AutoSize                = $true
$Label18.width                   = 25
$Label18.height                  = 10
$Label18.location                = New-Object System.Drawing.Point(24,130)
$Label18.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label19                         = New-Object system.Windows.Forms.Label
$Label19.text                    = "* Sets Maximum Active Time"
$Label19.AutoSize                = $true
$Label19.width                   = 25
$Label19.height                  = 10
$Label19.location                = New-Object System.Drawing.Point(24,148)
$Label19.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label20                         = New-Object system.Windows.Forms.Label
$Label20.text                    = "Instructions"
$Label20.AutoSize                = $true
$Label20.width                   = 169
$Label20.height                  = 23
$Label20.location                = New-Object System.Drawing.Point(581,463)
$Label20.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',20)

$Label21                         = New-Object system.Windows.Forms.Label
$Label21.text                    = "- This will modify your system and I highly recommend backing up any data you have prior to running!"
$Label21.AutoSize                = $true
$Label21.width                   = 150
$Label21.height                  = 10
$Label21.location                = New-Object System.Drawing.Point(390,507)
$Label21.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label22                         = New-Object system.Windows.Forms.Label
$Label22.text                    = "(E = Enable, D = Disable)"
$Label22.AutoSize                = $true
$Label22.width                   = 150
$Label22.height                  = 10
$Label22.location                = New-Object System.Drawing.Point(50,-3)
$Label22.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label23                         = New-Object system.Windows.Forms.Label
$Label23.text                    = "- Need to Restore action center, cortana, etc.? Run the Restore Script: https://youtu.be/H2ydDcqRZyM"
$Label23.AutoSize                = $true
$Label23.width                   = 150
$Label23.height                  = 10
$Label23.location                = New-Object System.Drawing.Point(390,529)
$Label23.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$PictureBox1                     = New-Object system.Windows.Forms.PictureBox
$PictureBox1.width               = 412
$PictureBox1.height              = 125
$PictureBox1.location            = New-Object System.Drawing.Point(1100,580)
$PictureBox1.imageLocation       = "https://github.com/dgcosenza/win10script/blob/master/images/fnx-toolbox.png?raw=true"
$PictureBox1.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$lightmode                       = New-Object system.Windows.Forms.Button
$lightmode.text                  = "Light Mode (E)"
$lightmode.width                 = 150
$lightmode.height                = 30
$lightmode.location              = New-Object System.Drawing.Point(405,50)
$lightmode.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($Panel1,$Label1,$Panel2,$Label3,$Panel3,$Label4,$Label15,$Panel4,$Label20,$Label21,$Label23,$PictureBox1))
$Panel1.controls.AddRange(@($installchoco,$uninstallchoco,$upgradechoco,$brave,$vivaldi,$opera,$msedge,$firefox,$subtitulos1,$7zip,$githubdestkop,$irfanview,$xnviewmp,$aimp,$musikcube,$spotify,$audacity,$musicbee,$winamp,$adobereader,$sumatrapdf,$libreoffice,$imageconverter,$handbrake,$smplayer,$notepad,$sublimetext,$gchrome,$mpc,$vlc,$popcorntime,$powertoys,$winterminal,$krita,$gimp,$inkscape,$blender,$kdenlive,$ccleaner,$speccy,$recuva,$defraggler,$vscode,$Label2))
$Panel2.controls.AddRange(@($essentialtweaks,$backgroundapps,$cortana,$windowssearch,$actioncenter,$darkmode,$visualfx,$onedrive,$Label22,$lightmode))
$Panel3.controls.AddRange(@($securitylow,$securityhigh,$Label5,$Label6,$Label7,$Label8,$Label9,$Label10,$Label11,$Label12,$Label13))
$Panel4.controls.AddRange(@($defaultwindowsupdate,$securitywindowsupdate,$Label16,$Label17,$Label18,$Label19))


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

$essentialtweaks.Add_Click({ 
    Write-Host "Creating Restore Point incase something bad happens"
    Enable-ComputerRestore -Drive "C:\"
    Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"

    Write-Host "Running O&O Shutup with Recommended Settings"
	Import-Module BitsTransfer
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/ChrisTitusTech/win10script/master/ooshutup10.cfg" -Destination ooshutup10.cfg
	Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe
	./OOSU10.exe ooshutup10.cfg /quiet

    Write-Host "Disabling Telemetry..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Write-Host "Disabling Application suggestions..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353698Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
    Write-Host "Disabling Activity History..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
    Write-Host "Disabling Location Tracking..."
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
    Write-Host "Disabling automatic Maps updates..."
	Set-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
    Write-Host "Disabling Feedback..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient" -ErrorAction SilentlyContinue | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
    Write-Host "Disabling Tailored Experiences..."
	If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
		New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
    Write-Host "Disabling Advertising ID..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
    Write-Host "Disabling Error reporting..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Windows Error Reporting\QueueReporting" | Out-Null
    Write-Host "Restricting Windows Update P2P only to local network..."
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" -Name "DODownloadMode" -Type DWord -Value 1
    Write-Host "Stopping and disabling Diagnostics Tracking Service..."
	Stop-Service "DiagTrack" -WarningAction SilentlyContinue
	Set-Service "DiagTrack" -StartupType Disabled
    Write-Host "Stopping and disabling WAP Push Service..."
	Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
	Set-Service "dmwappushservice" -StartupType Disabled
    Write-Host "Enabling F8 boot menu options..."
	bcdedit /set `{current`} bootmenupolicy Legacy | Out-Null
    Write-Host "Stopping and disabling Home Groups services..."
	Stop-Service "HomeGroupListener" -WarningAction SilentlyContinue
	Set-Service "HomeGroupListener" -StartupType Disabled
	Stop-Service "HomeGroupProvider" -WarningAction SilentlyContinue
	Set-Service "HomeGroupProvider" -StartupType Disabled
    Write-Host "Disabling Shared Experiences..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableCdp" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableMmx" -Type DWord -Value 0
    Write-Host "Disabling Remote Assistance..."
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 0
    Write-Host "Disabling Storage Sense..."
	Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Stopping and disabling Superfetch service..."
	Stop-Service "SysMain" -WarningAction SilentlyContinue
	Set-Service "SysMain" -StartupType Disabled
    Write-Host "Setting BIOS time to UTC..."
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 1
    Write-Host "Disabling Hibernation..."
	Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -Type Dword -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 0
    Write-Host "Showing task manager details..."
	$taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
	Do {
		Start-Sleep -Milliseconds 100
		$preferences = Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
	} Until ($preferences)
	Stop-Process $taskmgr
	$preferences.Preferences[28] = 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\TaskManager" -Name "Preferences" -Type Binary -Value $preferences.Preferences
    Write-Host "Showing file operations details..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
    Write-Host "Hiding Task View button..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
    Write-Host "Hiding People icon..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
    Write-Host "Showing all tray icons..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "EnableAutoTray" -Type DWord -Value 0
	Write-Host "Enabling NumLock after startup..."
	If (!(Test-Path "HKU:")) {
		New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS | Out-Null
	}
	Set-ItemProperty -Path "HKU:\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483650
	Add-Type -AssemblyName System.Windows.Forms
	If (!([System.Windows.Forms.Control]::IsKeyLocked('NumLock'))) {
		$wsh = New-Object -ComObject WScript.Shell
		$wsh.SendKeys('{NUMLOCK}')
	}

    Write-Host "Changing default Explorer view to This PC..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
    Write-Host "Hiding 3D Objects icon from This PC..."
	Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue

$Bloatware = @(

        #Unnecessary Windows 10 AppX Apps
        "Microsoft.3DBuilder"
        "Microsoft.AppConnector"
	    "Microsoft.BingFinance"
	    "Microsoft.BingNews"
	    "Microsoft.BingSports"
	    "Microsoft.BingTranslator"
	    "Microsoft.BingWeather"
        "Microsoft.GetHelp"
        "Microsoft.Getstarted"
        "Microsoft.Messaging"
        "Microsoft.Microsoft3DViewer"
        "Microsoft.MicrosoftSolitaireCollection"
        "Microsoft.NetworkSpeedTest"
        "Microsoft.News"
        "Microsoft.Office.Lens"
        "Microsoft.Office.Sway"
        "Microsoft.OneConnect"
        "Microsoft.People"
        "Microsoft.Print3D"
        "Microsoft.SkypeApp"
        "Microsoft.StorePurchaseApp"
        "Microsoft.Wallet"
        "Microsoft.Whiteboard"
        "Microsoft.WindowsAlarms"
        "microsoft.windowscommunicationsapps"
        "Microsoft.WindowsFeedbackHub"
        "Microsoft.WindowsMaps"
        "Microsoft.WindowsSoundRecorder"
        "Microsoft.ZuneMusic"
        "Microsoft.ZuneVideo"

        #Sponsored Windows 10 AppX Apps
        #Add sponsored/featured apps to remove in the "*AppName*" format
        "*EclipseManager*"
        "*ActiproSoftwareLLC*"
        "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
        "*Duolingo-LearnLanguagesforFree*"
        "*PandoraMediaInc*"
        "*CandyCrush*"
        "*BubbleWitch3Saga*"
        "*Wunderlist*"
        "*Flipboard*"
        "*Twitter*"
        "*Facebook*"
        "*Royal Revolt*"
        "*Sway*"
        "*Speed Test*"
        "*Dolby*"
        "*Viber*"
        "*ACGMediaPlayer*"
        "*Netflix*"
        "*OneCalendar*"
        "*LinkedInforWindows*"
        "*HiddenCityMysteryofShadows*"
        "*Hulu*"
        "*HiddenCity*"
        "*AdobePhotoshopExpress*"
                     
        #Optional: Typically not removed but you can if you need to for some reason
        #"*Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe*"
        #"*Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe*"
        #"*Microsoft.BingWeather*"
        #"*Microsoft.MSPaint*"
        #"*Microsoft.MicrosoftStickyNotes*"
        #"*Microsoft.Windows.Photos*"
        #"*Microsoft.WindowsCalculator*"
        #"*Microsoft.WindowsStore*"
    )
    foreach ($Bloat in $Bloatware) {
        Get-AppxPackage -Name $Bloat| Remove-AppxPackage
        Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $Bloat | Remove-AppxProvisionedPackage -Online
        Write-Host "Trying to remove $Bloat."
    }

    Write-Host "Installing Windows Media Player..."
	Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null

    #Stops edge from taking over as the default .PDF viewer    
    Write-Host "Stopping Edge from taking over as the default .PDF viewer"
    $NoPDF = "HKCR:\.pdf"
    $NoProgids = "HKCR:\.pdf\OpenWithProgids"
    $NoWithList = "HKCR:\.pdf\OpenWithList" 
    If (!(Get-ItemProperty $NoPDF  NoOpenWith)) {
        New-ItemProperty $NoPDF NoOpenWith 
    }        
    If (!(Get-ItemProperty $NoPDF  NoStaticDefaultVerb)) {
        New-ItemProperty $NoPDF  NoStaticDefaultVerb 
    }        
    If (!(Get-ItemProperty $NoProgids  NoOpenWith)) {
        New-ItemProperty $NoProgids  NoOpenWith 
    }        
    If (!(Get-ItemProperty $NoProgids  NoStaticDefaultVerb)) {
        New-ItemProperty $NoProgids  NoStaticDefaultVerb 
    }        
    If (!(Get-ItemProperty $NoWithList  NoOpenWith)) {
        New-ItemProperty $NoWithList  NoOpenWith
    }        
    If (!(Get-ItemProperty $NoWithList  NoStaticDefaultVerb)) {
        New-ItemProperty $NoWithList  NoStaticDefaultVerb 
    }
            
    #Appends an underscore '_' to the Registry key for Edge
    $Edge = "HKCR:\AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723_"
    If (Test-Path $Edge) {
        Set-Item $Edge AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723_ 
    }
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$windowssearch.Add_Click({ 
    Write-Host "Disabling Bing Search in Start Menu..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "CortanaConsent" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -Type DWord -Value 1
    Write-Host "Stopping and disabling Windows Search indexing service..."
	Stop-Service "WSearch" -WarningAction SilentlyContinue
	Set-Service "WSearch" -StartupType Disabled
    Write-Host "Hiding Taskbar Search icon / box..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$backgroundapps.Add_Click({ 
    Write-Host "Disabling Background application access..."
	Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach {
		Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
		Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
	}
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$cortana.Add_Click({ 
    Write-Host "Disabling Cortana..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -Type DWord -Value 0
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Type DWord -Value 0
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$securitylow.Add_Click({ 
    Write-Host "Lowering UAC level..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 0
    Write-Host "Disabling Windows Defender..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -Type DWord -Value 1
	If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -ErrorAction SilentlyContinue
	} ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -ErrorAction SilentlyContinue
	}
    Write-Host "Disabling Windows Defender Cloud..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SpynetReporting" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SubmitSamplesConsent" -Type DWord -Value 2
    Write-Host "Disabling Meltdown (CVE-2017-5754) compatibility flag..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" -Name "cadca5fe-87d3-4b96-b7fb-a231484277cc" -ErrorAction SilentlyContinue
    Write-Host "Disabling Malicious Software Removal Tool offering..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -Type DWord -Value 1
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$securityhigh.Add_Click({ 
    Write-Host "Raising UAC level..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 5
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "PromptOnSecureDesktop" -Type DWord -Value 1
    Write-Host "Disabling SMB 1.0 protocol..."
	Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
    Write-Host "Enabling Windows Defender..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -ErrorAction SilentlyContinue
	If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
	} ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
	}
    Write-Host "Enabling Windows Defender Cloud..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SpynetReporting" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" -Name "SubmitSamplesConsent" -ErrorAction SilentlyContinue
    Write-Host "Disabling Windows Script Host..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows Script Host\Settings" -Name "Enabled" -Type DWord -Value 0
    Write-Host "Enabling Meltdown (CVE-2017-5754) compatibility flag..."
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\QualityCompat" -Name "cadca5fe-87d3-4b96-b7fb-a231484277cc" -Type DWord -Value 0
    Write-Host "Enabling Malicious Software Removal Tool offering..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\MRT" -Name "DontOfferThroughWUAU" -ErrorAction SilentlyContinue
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$defaultwindowsupdate.Add_Click({ 
    Write-Host "Enabling driver offering through Windows Update..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue
    Write-Host "Enabling Windows Update automatic restart..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$securitywindowsupdate.Add_Click({ 
    Write-Host "Disabling driver offering through Windows Update..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
    Write-Host "Disabling Windows Update automatic restart..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$actioncenter.Add_Click({ 
    Write-Host "Disabling Action Center..."
	If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
		New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -Type DWord -Value 0
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$visualfx.Add_Click({ 
    Write-Host "Adjusting visual effects for performance..."
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 0
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144,18,3,128,16,0,0,0))
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
	Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$onedrive.Add_Click({ 
    Write-Host "Disabling OneDrive..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Type DWord -Value 1
    Write-Host "Uninstalling OneDrive..."
	Stop-Process -Name "OneDrive" -ErrorAction SilentlyContinue
	Start-Sleep -s 2
	$onedrive = "$env:SYSTEMROOT\SysWOW64\OneDriveSetup.exe"
	If (!(Test-Path $onedrive)) {
		$onedrive = "$env:SYSTEMROOT\System32\OneDriveSetup.exe"
	}
	Start-Process $onedrive "/uninstall" -NoNewWindow -Wait
	Start-Sleep -s 2
	Stop-Process -Name "explorer" -ErrorAction SilentlyContinue
	Start-Sleep -s 2
	Remove-Item -Path "$env:USERPROFILE\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
	Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
	Remove-Item -Path "$env:PROGRAMDATA\Microsoft OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
	Remove-Item -Path "$env:SYSTEMDRIVE\OneDriveTemp" -Force -Recurse -ErrorAction SilentlyContinue
	If (!(Test-Path "HKCR:")) {
		New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
	}
	Remove-Item -Path "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
	Remove-Item -Path "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$darkmode.Add_Click({ 
    Write-Host "Enabling Dark Mode"
	Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$lightmode.Add_Click({ 
    Write-Host "Switching Back to Light Mode"
	Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

[void]$Form.ShowDialog()