##########
#
# Better OBS - Main functions
# Primary Author: Carlos Outerelo <outerelocarlos@gmail.com>
# Primary Author Source: https://github.com/outerelocarlos/Better-OBS
#
##########

Function BetterOBS {
	$dir = "C:\Program Files\obs-studio"
	
	If (Test-Path $dir) {
		Write-Host "Installing OBS add-ons to expand upon OBS' default functionalities..."
		set-location $dir
		git clone https://github.com/outerelocarlos/Better-OBS.git
		Remove-Item Better-OBS/*.md -Recurse -Force
		Remove-Item Better-OBS/.git -Recurse -Force
		Remove-Item Better-OBS/.gitattributes -Recurse -Force
		Remove-Item Better-OBS/setup -Recurse -Force
		$source = Get-Item Better-OBS/*
		Copy-Item $source $dir.FullName -Recurse -Force
		Remove-Item Better-OBS -Recurse -Force
	}
}

# Export functions
Export-ModuleMember -Function *