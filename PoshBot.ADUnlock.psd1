@{

RootModule = 'PoshBot.ADUnlock.psm1'

ModuleVersion = '1.0.0'
GUID = 'd7af6d5f-f603-41c1-a658-0e5ce9174e34'

Author = 'Ilker Kulgu'
CompanyName = 'Community'
Copyright = '(c) 2018 Ilker Kulgu. All rights reserved'
Description = 'PoshBot plugin to unlock AD user account'

RequiredModules = @('PoshBot')
FunctionsToExport = '*'
CmdletsToExport = @()
VariablesToExport = @()
AliasesToExport = @()

PrivateData = @{

    Permissions = @(
        @{
            Name = 'unlock'
            Description = 'Can unlock AD user accounts'
        }
    )
} 
}
