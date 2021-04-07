# Connect to vCenter Server System

$VIServer = "10.44.59.209"
$VIUsername = 'administrator@vsphere.local'
$VIPassword = 'Passw0rd!'

Connect-VIServer $VIServer -User $VIUsername -Password $VIPassword -Force

# ESXi ova Import

$ImportVMName1 = "Nested-ESXi-1"
$ImportVMName2 = "Nested-ESXi-2"
$ImportVMName3 = "Nested-ESXi-3"

$vm_host1 = Get-VMHost -Name "10.44.59.21" -Location "Cluster"
$vm_host1 | Import-vApp -Source "E:\Nested_ESXi6.7_Appliance_Template_v1.ova" -Name $ImportVMName1 -Datastore "vsanDatastore" -Force

$vm_host2 = Get-VMHost -Name "10.44.59.23" -Location "Cluster"
$vm_host2 | Import-vApp -Source "E:\Nested_ESXi6.7_Appliance_Template_v1.ova" -Name $ImportVMName2 -Datastore "vsanDatastore" -Force


$vm_host3 = Get-VMHost -Name "10.44.59.24" -Location "Cluster"
$vm_host3 | Import-vApp -Source "E:\Nested_ESXi6.7_Appliance_Template_v1.ova" -Name $ImportVMName3 -Datastore "vsanDatastore" -Force
