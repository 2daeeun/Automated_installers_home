@echo off

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation
pause

:: 항상 자동으로 yes를 선택하도록 설정
choco feature enable --name=allowGlobalConfirmation

:: 먼저 기존 패키지 업데이트
choco upgrade all -y

:: 사용할 어플리케이션 설치
choco install googlechrome
choco install googledrive
choco install honeyview
choco install sumatrapdf
choco install potplayer
choco install qbittorrent
choco install barrier
choco install virtualbox
choco install powershell-core
choco install git.install -y --params "/GitAndUnixToolsOnPath /WindowsTerminal /WindowsTerminalProfile /NoGuiHereIntegration"
git config --global color.ui auto
choco install neovim
choco install vscode
choco install visualstudio2022community
choco install office365business

:END
