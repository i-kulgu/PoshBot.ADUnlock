function Invoke-ADUnlock {
    <#
    .SYNOPSIS
        Unlock AD user 
    .EXAMPLE
        !ul <username> -- Where <username> is the AD account
		!unlock <username>
		!Invoke-ADUnlock <username>
    #>
    [PoshBot.BotCommand(Aliases = ('ul', 'unlock'), Permissions = 'unlock')]
    [cmdletbinding(DefaultParameterSetName = 'username')]
    param(
		[parameter(Mandatory, Position = 0, ParameterSetName = 'username')]
        [string]$username
    )

   $check = (Get-ADUser $username -Properties Lockedout).Lockedout
		if ($check) {
			Unlock-ADAccount -Identity $username
			if ($check) {
				$Text = "User $username is unlocked.";
				$type = "Normal";
			} else { 
				$Text = "Something gone wrong while unlocking !";
				$type = "Error";
			}
		} else {
			$Text = "$username is not locked out.";
			$type = "Normal";
		}
	New-PoshBotCardResponse -Type $type -Text $Text
}

Export-ModuleMember -Function Invoke-ADUnlock
