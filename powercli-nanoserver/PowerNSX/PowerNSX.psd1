#
# Module manifest for module 'PowerNSX'
#
# Generated by: Nick Bradford
#
# Generated on: 13/09/2017
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PowerNSX.psm1'

# Version number of this module.
ModuleVersion = '3.0.1047'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'ea3b0bdc-83a3-4cae-9920-7257beae8614'

# Author of this module
Author = 'Nick Bradford'

# Company or vendor of this module
CompanyName = 'VMware'

# Copyright statement for this module
Copyright = 'Copyright 2015 VMware, Inc. All Rights Reserved.'

# Description of the functionality provided by this module
Description = 'PowerNSX is a PowerShell module that abstracts the VMware NSX API to a set of easily used PowerShell functions.
This module is not supported by VMware, and comes with no warranties express or implied. Please test and validate its functionality before using in a production environment.
It aims to focus on exposing New, Update, Remove and Get operations for all key NSX functions as well as adding additional functionality to extend the capabilities of NSX management beyond the native UI or API.
It is unlikely that it will ever expose 100% of the NSX API, but feature requests are welcomed if you find a particular function you require to be lacking.
PowerNSX is currently a work in progress and is not yet feature complete.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @('PowerCLI.Vds', 
               'PowerCLI.ViCore')

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-XmlElement', 'Format-Xml', 'Invoke-NsxRestMethod', 
               'Invoke-NsxWebRequest', 'Connect-NsxServer', 'Disconnect-NsxServer', 
               'Get-PowerNsxVersion', 'Get-NsxClusterStatus', 'Invoke-NsxCli', 
               'Wait-NsxJob', 'Get-NsxCliDfwFilter', 'Get-NsxCliDfwRule', 
               'Get-NsxCliDfwAddrSet', 'New-NsxManager', 'Set-NsxManager', 
               'New-NsxController', 'Get-NsxController', 'Remove-NsxController', 
               'Wait-NsxControllerJob', 'New-NsxIpPool', 'Get-NsxIpPool', 
               'Remove-NsxIpPool', 'Get-NsxVdsContext', 'New-NsxVdsContext', 
               'Remove-NsxVdsContext', 'New-NsxClusterVxlanConfig', 
               'Install-NsxCluster', 'Remove-NsxCluster', 
               'Remove-NsxClusterVxlanConfig', 'New-NsxSegmentIdRange', 
               'Get-NsxSegmentIdRange', 'Remove-NsxSegmentIdRange', 
               'Get-NsxTransportZone', 'New-NsxTransportZone', 
               'Remove-NsxTransportZone', 'Add-NsxTransportZoneMember', 
               'Remove-NsxTransportZoneMember', 'Get-NsxLogicalSwitch', 
               'New-NsxLogicalSwitch', 'Remove-NsxLogicalSwitch', 
               'Get-NsxSpoofguardPolicy', 'New-NsxSpoofguardPolicy', 
               'Remove-NsxSpoofguardPolicy', 'Publish-NsxSpoofguardPolicy', 
               'Get-NsxSpoofguardNic', 'Grant-NsxSpoofguardNicApproval', 
               'Revoke-NsxSpoofguardNicApproval', 'Get-NsxLogicalRouter', 
               'New-NsxLogicalRouterInterfaceSpec', 'New-NsxLogicalRouter', 
               'Remove-NsxLogicalRouter', 'Set-NsxLogicalRouter', 
               'Set-NsxLogicalRouterInterface', 'New-NsxLogicalRouterInterface', 
               'Remove-NsxLogicalRouterInterface', 'Get-NsxLogicalRouterInterface', 
               'New-NsxAddressSpec', 'New-NsxEdgeInterfaceSpec', 
               'New-NsxEdgeSubInterfaceSpec', 'Set-NsxEdgeInterface', 
               'Clear-NsxEdgeInterface', 'Get-NsxEdgeInterface', 
               'New-NsxEdgeSubInterface', 'Remove-NsxEdgeSubInterface', 
               'Get-NsxEdgeSubInterface', 'Get-NsxEdgeInterfaceAddress', 
               'Add-NsxEdgeInterfaceAddress', 'Remove-NsxEdgeInterfaceAddress', 
               'Get-NsxEdge', 'New-NsxEdge', 'Repair-NsxEdge', 'Set-NsxEdge', 
               'Remove-NsxEdge', 'Enable-NsxEdgeSsh', 'Disable-NsxEdgeSsh', 
               'Set-NsxEdgeNat', 'Get-NsxEdgeNat', 'Get-NsxEdgeNatRule', 
               'New-NsxEdgeNatRule', 'Remove-NsxEdgeNatRule', 'Set-NsxEdgeFirewall', 
               'Get-NsxEdgeFirewall', 'Get-NsxEdgeFirewallRule', 
               'New-NsxEdgeFirewallRule', 'Remove-NsxEdgeFirewallRule', 
               'Get-NsxEdgeCsr', 'New-NsxEdgeCsr', 'Remove-NsxEdgeCrl', 
               'Get-NsxEdgeCertificate', 'New-NsxEdgeSelfSignedCertificate', 
               'Remove-NsxEdgeCertificate', 'Get-NsxSslVpn', 'Set-NsxSslVpn', 
               'New-NsxSslVpnAuthServer', 'Get-NsxSslVpnAuthServer', 
               'New-NsxSslVpnUser', 'Get-NsxSslVpnUser', 'Remove-NsxSslVpnUser', 
               'New-NsxSslVpnIpPool', 'Get-NsxSslVpnIpPool', 
               'Remove-NsxSslVpnIpPool', 'New-NsxSslVpnPrivateNetwork', 
               'Get-NsxSslVpnPrivateNetwork', 'Remove-NsxSslVpnPrivateNetwork', 
               'New-NsxSslVpnClientInstallationPackage', 
               'Get-NsxSslVpnClientInstallationPackage', 
               'Remove-NsxSslVpnClientInstallationPackage', 'Set-NsxEdgeRouting', 
               'Get-NsxEdgeRouting', 'Get-NsxEdgeStaticRoute', 
               'New-NsxEdgeStaticRoute', 'Remove-NsxEdgeStaticRoute', 
               'Get-NsxEdgePrefix', 'New-NsxEdgePrefix', 'Remove-NsxEdgePrefix', 
               'Get-NsxEdgeBgp', 'Set-NsxEdgeBgp', 'Get-NsxEdgeBgpNeighbour', 
               'New-NsxEdgeBgpNeighbour', 'Remove-NsxEdgeBgpNeighbour', 
               'Get-NsxEdgeOspf', 'Set-NsxEdgeOspf', 'Get-NsxEdgeOspfArea', 
               'Remove-NsxEdgeOspfArea', 'New-NsxEdgeOspfArea', 
               'Get-NsxEdgeOspfInterface', 'Remove-NsxEdgeOspfInterface', 
               'New-NsxEdgeOspfInterface', 'Get-NsxEdgeRedistributionRule', 
               'Remove-NsxEdgeRedistributionRule', 'New-NsxEdgeRedistributionRule', 
               'Set-NsxLogicalRouterRouting', 'Get-NsxLogicalRouterRouting', 
               'Get-NsxLogicalRouterStaticRoute', 
               'New-NsxLogicalRouterStaticRoute', 
               'Remove-NsxLogicalRouterStaticRoute', 'Get-NsxLogicalRouterPrefix', 
               'New-NsxLogicalRouterPrefix', 'Remove-NsxLogicalRouterPrefix', 
               'Get-NsxLogicalRouterBgp', 'Set-NsxLogicalRouterBgp', 
               'Get-NsxLogicalRouterBgpNeighbour', 
               'New-NsxLogicalRouterBgpNeighbour', 
               'Remove-NsxLogicalRouterBgpNeighbour', 'Get-NsxLogicalRouterOspf', 
               'Set-NsxLogicalRouterOspf', 'Get-NsxLogicalRouterOspfArea', 
               'Remove-NsxLogicalRouterOspfArea', 'New-NsxLogicalRouterOspfArea', 
               'Get-NsxLogicalRouterOspfInterface', 
               'Remove-NsxLogicalRouterOspfInterface', 
               'New-NsxLogicalRouterOspfInterface', 
               'Get-NsxLogicalRouterRedistributionRule', 
               'Remove-NsxLogicalRouterRedistributionRule', 
               'New-NsxLogicalRouterRedistributionRule', 'Get-NsxSecurityGroup', 
               'New-NsxSecurityGroup', 'Remove-NsxSecurityGroup', 
               'Add-NsxSecurityGroupMember', 'Remove-NsxSecurityGroupMember', 
               'New-NsxDynamicCriteriaSpec', 'Add-NsxDynamicMemberSet', 
               'Get-NsxDynamicMemberSet', 'Remove-NsxDynamicMemberSet', 
               'Add-NsxDynamicCriteria', 'Get-NsxDynamicCriteria', 
               'Remove-NsxDynamicCriteria', 'New-NsxSecurityTag', 
               'Get-NsxSecurityTag', 'Remove-NsxSecurityTag', 
               'Get-NsxSecurityTagAssignment', 'New-NsxSecurityTagAssignment', 
               'Remove-NsxSecurityTagAssignment', 'Get-NsxIpSet', 'New-NsxIpSet', 
               'Remove-NsxIpSet', 'Get-NsxMacSet', 'New-NsxMacSet', 'Remove-NsxMacSet', 
               'Get-NsxService', 'New-NsxService', 'Remove-NsxService', 
               'Get-NsxFirewallSection', 'New-NsxFirewallSection', 
               'Remove-NsxFirewallSection', 'Get-NsxFirewallRule', 
               'New-NsxFirewallRule', 'Remove-NsxFirewallRule', 
               'Get-NsxLoadBalancer', 'Set-NsxLoadBalancer', 
               'Get-NsxLoadBalancerMonitor', 'New-NsxLoadBalancerMonitor', 
               'Remove-NsxLoadBalancerMonitor', 
               'Get-NsxLoadBalancerApplicationProfile', 
               'New-NsxLoadBalancerApplicationProfile', 
               'Remove-NsxLoadBalancerApplicationProfile', 
               'New-NsxLoadBalancerMemberSpec', 'New-NsxLoadBalancerPool', 
               'Get-NsxLoadBalancerPool', 'Remove-NsxLoadBalancerPool', 
               'Get-NsxLoadBalancerPoolMember', 'Set-NsxLoadBalancerPoolMember', 
               'Add-NsxLoadBalancerPoolMember', 'Remove-NsxLoadBalancerPoolMember', 
               'Get-NsxLoadBalancerVip', 'Add-NsxLoadBalancerVip', 
               'Remove-NsxLoadBalancerVip', 'Get-NsxSecurityPolicy', 
               'Remove-NsxSecurityPolicy', 'New-NsxSecurityPolicyFirewallRuleSpec', 
               'Get-NsxSecurityPolicyHighestUsedPrecedence', 
               'New-NsxSecurityPolicy', 
               'New-NsxSecurityPolicyGuestIntrospectionSpec', 
               'New-NsxSecurityPolicyNetworkIntrospectionSpec', 
               'New-NsxSecurityPolicyAssignment', 
               'Remove-NsxSecurityPolicyAssignment', 
               'Get-NsxSecurityGroupEffectiveMember', 'Get-NsxServiceDefinition', 
               'Get-NsxServiceProfile', 'Find-NsxWhereVMUsed', 
               'Get-NsxBackingPortGroup', 'Get-NsxBackingDVSwitch', 
               'Update-PowerNsx', 'Get-NsxFirewallExclusionListMember', 
               'Add-NsxFirewallExclusionListMember', 
               'Remove-NsxFirewallExclusionListMember', 'Get-NsxManagerSsoConfig', 
               'Get-NsxManagerVcenterConfig', 'Get-NsxManagerTimeSettings', 
               'Set-NsxManagerTimeSettings', 'Clear-NsxManagerTimeSettings', 
               'Get-NsxManagerSyslogServer', 'Get-NsxManagerNetwork', 
               'Get-NsxManagerBackup', 'Get-NsxManagerComponentSummary', 
               'Get-NsxManagerSystemSummary', 'Get-NsxManagerCertificate', 
               'Get-NsxManagerRole', 'Set-NsxManagerRole', 'Invoke-NsxManagerSync', 
               'Get-NsxManagerSyncStatus', 'Add-NsxSecondaryManager', 
               'Get-NsxSecondaryManager', 'Remove-NsxSecondaryManager', 
               'New-NsxServiceGroup', 'Add-NsxServiceGroupMember', 
               'Get-NsxServiceGroup', 'Get-NsxServiceGroupMember', 
               'Remove-NsxServiceGroup', 'Get-NsxLoadBalancerStats', 
               'Get-NsxFirewallSavedConfiguration', 
               'New-NsxFirewallSavedConfiguration', 
               'Remove-NsxFirewallSavedConfiguration', 
               'Set-NsxFirewallSavedConfiguration', 
               'New-NsxLoadBalancerApplicationRule', 
               'Get-NsxLoadBalancerApplicationRule', 'Copy-NsxEdge', 
               'Export-NsxObject', 'Import-NsxObject', 'Connect-NsxLogicalSwitch', 
               'Disconnect-NsxLogicalSwitch', 'Add-NsxLicense', 'Get-NsxLicense', 
               'Get-NsxApplicableMember', 'Get-NsxSecurityGroupMemberTypes', 
               'Get-NsxSecurityGroupEffectiveVirtualMachine', 
               'Get-NsxSecurityGroupEffectiveIpAddress', 
               'Get-NsxSecurityGroupEffectiveMacAddress', 
               'Get-NsxSecurityGroupEffectiveVnic', 'Set-NsxFirewallThreshold', 
               'Get-NsxFirewallThreshold', 'Get-NsxFirewallGlobalConfiguration', 
               'Set-NsxFirewallGlobalConfiguration', 'Add-NsxIpSetMember', 
               'Remove-NsxIpSetMember', 'Get-NsxUserRole', 'Invoke-XpathQuery', 
               'Get-NsxFirewallRuleMember', 'Add-NsxFirewallRuleMember', 
               'Remove-NsxFirewallRuleMember', 'Wait-NsxGenericJob', 
               'Remove-NsxController', 'Get-NsxFirewallPublishStatus', 
               'Get-NsxLogicalRouterBridging', 'Set-NsxLogicalRouterBridging', 
               'New-NsxLogicalRouterBridge', 'Get-NsxLogicalRouterBridge', 
               'Remove-NsxLogicalRouterBridge', 'Remove-NsxEdgeCsr'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        ProjectUri = 'https://powernsx.github.io/'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
