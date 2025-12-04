# Connect using API token
Connect-PveCluster -HostsAndPorts pve1,pve2,pve3 `
                   -SkipCertificateCheck `
                   -ApiToken "prtg@pam!prtg-token=4a2b4d09-a9c6-4f65-ad3e-6e33cc74d74b"

# List nodes
# $ret = Get-PveVersion
# $ret
# $ret.ToData()
# $ret.ToTable()

# (Get-PveNodes).ToData() | Select-Object -Property type, node, status, cpu, mem, disk, uptime, maxdisk | Out-Default

Get-PveClusterResources -Type vm | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty data
