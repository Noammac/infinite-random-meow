$path = (Get-ItemProperty "hklm:SOFTWARE\MG STUDIO\SPEECHMG").InstallPath
while(1) {
	$pitch = $(Get-Random -minimum -10 -maximum 10)
	$speed = $(Get-Random -minimum -10 -maximum 10)
	$volume = $(Get-Random -minimum 1 -maximum 100)
	$meow = "meow " * $(Get-Random -minimum 1 -maximum 10)
	write-host "Pitch: $pitch, Speed: $speed, Volume: $volume"
	write-host $meow
	& ($path + "speechmg") $meow $pitch $speed $volume
}
