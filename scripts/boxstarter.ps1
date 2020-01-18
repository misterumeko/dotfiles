# Install Boxstarter:
# Set-ExecutionPolicy RemoteSigned
# . { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force
#
# Run (in Boxstarter Shell):
# Install-BoxstarterPackage -PackageName <THIS_URL>
#
# Chocolateyで別途インストール:
# choco install qttabbar # インストール時にエラーダイアログが出るため。
# choco install visualstudio2019community # Boxstarterだと失敗するため。PowerShellならOK。

Disable-UAC
Disable-BingSearch
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -DisableShowRecentFilesInQuickAccess -DisableShowFrequentFoldersInQuickAccess
Set-TaskbarOptions -Size Small

choco install Microsoft-Hyper-V-All -source windowsFeatures
choco install Microsoft-Windows-Subsystem-Linux -source windowsfeatures

choco install vscode
choco install microsoft-windows-terminal
choco install googlechrome
choco install firefox
choco install 7zip.install
choco install git.install
choco install sourcetree
choco install keyhac
choco install adobereader
choco install vlc
choco install miniconda3
choco install nvm
choco install kindle
choco install strokesplus.install
choco install docker-desktop # 再起動の度にDockerが起動するから最後にインストールする。

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
