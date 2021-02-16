$Lista_VMs = import-csv c:\temp\servers-lincese.csv
#$VM = get-azvm | Select-Object Name,@{Name="OSType"; Expression={$_.StorageProfile.OSDisk.OSType} 

foreach ($VM in $Lista_VMs){    
    $VM = get-azvm -Name $VM.Name
    $vm.LicenseType = "Windows_Server"
    Update-AzVM -VM $VM -ResourceGroupName ($VM.resourcegroupname)
}

#check
Get-AzVM | select ResourceGroupName, Name, LicenseType