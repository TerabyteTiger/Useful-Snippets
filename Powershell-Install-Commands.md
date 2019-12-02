# PoSh Commands for Profile Setup

All commands taken from linked repositories. 

## posh-git && [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh)
```powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
```

## [PoShFuck](https://github.com/mattparkes/PoShFuck)
First line needs to be run as Admin:
```powershell
Set-ExecutionPolicy RemoteSigned
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mattparkes/PoShFuck/master/Install-TheFucker.ps1'))
```

## [PSColor](https://github.com/Davlind/PSColor)
```powershell
Install-Module PSColor -Scope CurrentUser
```
