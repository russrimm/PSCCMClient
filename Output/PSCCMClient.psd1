#
# Module manifest for module 'PSCCMClient'
#
# Generated by: Cody Mathis
#
# Generated on: 9/29/2019
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule        = 'PSCCMClient.psm1'

    # Version number of this module.
    ModuleVersion     = '0.3.2'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID              = '103faf7f-4612-49ac-85be-2a5196654c68'

    # Author of this module
    Author            = 'Cody Mathis'

    # Company or vendor of this module
    CompanyName       = 'PSCCMClient'

    # Copyright statement for this module
    Copyright         = '(c) 2020 Cody Mathis. All rights reserved.'

    # Description of the functionality provided by this module
    Description       = 'Module focused on interacting with and managing the MEMCM Client'

    # Minimum version of the Windows PowerShell engine required by this module
    # PowerShellVersion = ''

    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()

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
    FunctionsToExport = @('ConvertFrom-CCMSchedule','Get-CCMApplication','Get-CCMBaseline','Get-CCMCacheContent','Get-CCMCacheInfo','Get-CCMCimInstance','Get-CCMClientDirectory','Get-CCMClientInfo','Get-CCMClientVersion','Get-CCMCurrentManagementPoint','Get-CCMCurrentSoftwareUpdatePoint','Get-CCMCurrentWindowAvailableTime','Get-CCMDNSSuffix','Get-CCMExecStartupTime','Get-CCMGUID','Get-CCMLastHardwareInventory','Get-CCMLastHeartbeat','Get-CCMLastScheduleTrigger','Get-CCMLastSoftwareInventory','Get-CCMLogFile','Get-CCMLoggingConfiguration','Get-CCMMaintenanceWindow','Get-CCMPackage','Get-CCMPrimaryUser','Get-CCMProvisioningMode','Get-CCMRegistryProperty','Get-CCMServiceWindow','Get-CCMSite','Get-CCMSoftwareUpdate','Get-CCMSoftwareUpdateGroup','Get-CCMSoftwareUpdateSettings','Get-CCMTaskSequence','Invoke-CCMApplication','Invoke-CCMBaseline','Invoke-CCMClientAction','Invoke-CCMCommand','Invoke-CCMPackage','Invoke-CCMResetPolicy','Invoke-CCMSoftwareUpdate','Invoke-CCMTaskSequence','Invoke-CCMTriggerSchedule','New-CCMConnection','New-LoopAction','Remove-CCMCacheContent','Repair-CCMCacheLocation','Reset-CCMGUID','Reset-CCMLoggingConfiguration','Set-CCMCacheLocation','Set-CCMCacheSize','Set-CCMClientAlwaysOnInternet','Set-CCMDNSSuffix','Set-CCMLoggingConfiguration','Set-CCMManagementPoint','Set-CCMProvisioningMode','Set-CCMRegistryProperty','Set-CCMSite','Test-CCMIsClientAlwaysOnInternet','Test-CCMIsClientOnInternet','Test-CCMIsWindowAvailableNow','Test-CCMStaleLog','Write-CCMLogEntry')

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @()

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @('Get-CCMCB','Get-CCMCurrentMP','Get-CCMMP','Get-CCMCurrentSUP','Get-CCMSUP','Get-CCMLastHINV','Get-CCMLastDDR','Get-CCMLastSINV','Get-CCMMW','Get-CIMRegistryProperty','Get-CCMUpdate','Get-CCMSUG','Invoke-CCMUpdate','Set-CCMMP','Set-CIMRegistryProperty')

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = @('SCCM', 'MEMCM', 'CIM', 'ConfigMgr', 'PowerShell', 'SystemCenter')

            # A URL to the license for this module.
            # LicenseUri = ''

            # A URL to the main website for this project.
            ProjectUri   = 'https://github.com/CodyMathis123/PSCCMClient'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            ReleaseNotes = @'
v0.3.1
* Get-CCMSoftwareUpdate function now accounts for new AV Def names for the 'IncludeDefs' switch parameter
* Write-CCMLogEntry now also accepts the string names of the severity levels
* Improve the region documentation in Get-CCMLogFile
* Fix function reference in Get-CCMClientInfo	
* Improve splitting performance in Get-CCMLogFile
* Add timestamp filtering to Get-CCMLogFile
v0.3.0
* All commands that run remotely now support PSSession, as well as CimSession
* Add Get-CCMConnection to module in private folder
            This function is used internally to return connection info, whether it is a CimSession, PSSession, or just computername
* Convert all functions to using Get-CCMConnection to determine best / preferred connection
* Add Invoke-CCMCommand to module
            This function is used in place of Invoke-CIMPowerShell, as a means to execute remote commands inside of functions.
            Supports ArgumentList parameter which simplifies many functions internally
* Add Set-CCMClientAlwaysOnInternet to module
* Add Get-CCMCimInstance to module
* Change 'Get-CIMRegistryProperty' to 'Get-CCMRegistryProperty' - alias is in place
            Command now accepts a CimSession, or a PSsession
* Change 'Set-CIMRegistryProperty' to 'Set-CCMRegistryProperty' - alias is in place
            Command now accepts a CimSession, or a PSsession
* Get-CCMLogFile now has a -Severity parameter which will filter what 'type' of messages are returned
v0.2.3
* Fix ConvertFrom-CCMSchedule function export name... again 
* ConvertFrom-CCMSchedule now outputs datetime object with proper 'Kind'
v0.2.2
* Add Get-CCMCurrentWindowAvailableTime to module
v0.2.1
* Add Get-CCMExecStartupTime to module
* Fix Set-CCMSite - working as expected now. It was passing an empty sitecode to remote machines
* Add Test-CCMIsWindowAvailableNow to module
* Add Get-CCMSoftwareUpdateSettings to module
* Fix ConvertFrom-CCMSchedule function export name
* Add Test-CCMIsClientOnInternet to module
* Add Test-CCMIsClientAlwaysOnInternet to module
* Improve ConvertFrom-CCMSchedule parsing of SMS_ST_NonRecurring
* Fix LastComplianceStatus mapping for *-CCMBaseline
* Add -Filter parameter to Get-CCMLogFile function
v0.2.0
* Fix WhatIf support for Set-CIMRegistryProperty
* Add WhatIf support to Set-CCMLoggingConfiguration
* Move New-LoopAction from Private to Public
* Move Get-CIMRegistryProperty from Private to Public
* Move Set-CIMRegistryProperty from Private to Public
* Add Test-CCMStaleLog to module
v0.1.9
* Fix bad function reference in Get-CCMClientInfo
v0.1.8
* Correct Get-CCMCacheInfo function name in file            
* Get-CCMClientDirectory now returns [pscustomobject] instead of hash table
* Add Get-CCMClientVersion to module
* Add Get-CCMClientInfo to module
            This is a WIP function that will have info added when other functions are developed
v0.1.7
* Correct missing references to Get-CCMGUID
v0.1.6
* Improve output of Get-CCMApplication
v0.1.5
* Add Get-CCMSoftwareUpdateGroup to module
* Add Get-CCMApplication to module
* Add Invoke-CCMApplication to module
* Add Get-CCMCB alias to Get-CCMBaseline
* Update Write-CCMLogEntry function to support pipeline by property name for the message
            Use case would be custom objects with a 'ToLog' property
v0.1.4
* Correct alias implementation
v0.1.3
* Rename Get-CCMSoftwareUpdatePoint.ps1 file to Get-CCMCurrentSoftwareUpdatePoint.ps1 to match function name
* Add Get-CCMDNSSuffix to module
* Add Get-CCMGUID to module
* Add Set-CCMDNSSuffix to module
* Add Set-CCMManagementPoint to module
* Add Set-CCMSite to module
* Add Get-CCMSite to module
* Adding some aliases for MP/SUP/DDR commands
* Add -whatif support to some functions that should have already had it implemented
v0.1.2
* Adding release notes to manifest
v0.1.1
* Update Get-CCMUpdate to translate ComplianceState and EvaluationState
v0.1.0
* Initial publish to PowerShell Gallery
'@

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}



