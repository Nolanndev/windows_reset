if (([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator) -eq $true) {
    Write-Output "Initialisation"
    winget uninstall EpicGames.EpicGamesLauncher
    winget install EpicGames.EpicGamesLauncher
} else {
    Write-Error "droits administrateurs requis"
}




# [Environment]::SetEnvironmentVariable(
#     "Path",
#     [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) + ";C:\bin",
#     [EnvironmentVariableTarget]::Machine)

# # Modifier la variable d'environnement path
# # ou 
# # Set-EnvironmentVariable("path",$env:path + ";C:\test","User")

# # Set-EnvironmentVariable(nom,valeur,user(utilisateur) ou machine(systeme))
